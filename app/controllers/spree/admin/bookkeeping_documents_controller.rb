module Spree
  module Admin
    class BookkeepingDocumentsController < ResourceController
      prepend_before_action :load_order, if: :order_focused?

      helper_method :order_focused?

      def show
        respond_with(@bookkeeping_document) do |format|
          format.pdf do
            send_data @bookkeeping_document.pdf, type: 'application/pdf', disposition: 'inline'
          end
        end
      end

      private

      def order_focused?
        @order_focused ||= params[:order_id].present?
      end

      def load_order
        @order = Spree::Order.find_by(number: params[:order_id])
      end

      def collection
        return @collection if @collection.present?
        params[:q] ||= {}
        params[:q][:s] ||= 'created_at asc'

        @search = Spree::BookkeepingDocument.ransack(params[:q])

        if order_focused?
          @bookkeeping_documents = @search.result
          @collection = @bookkeeping_documents.where(printable: @order)
        else
          @collection = @search.result.
              page(params[:page]).
              per(params[:per_page] || Spree::Config[:admin_documents_per_page])
        end
      end
    end
  end
end
