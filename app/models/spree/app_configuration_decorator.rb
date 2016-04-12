Spree::AppConfiguration.class_eval do
  # @!attribute [rw] admin_documents_per_page
  #   @return [Integer] Number of documents to display in admin (default: +10+)
  preference :admin_documents_per_page, :integer, default: 10
end