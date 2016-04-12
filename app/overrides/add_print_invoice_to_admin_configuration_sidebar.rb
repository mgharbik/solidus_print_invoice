Deface::Override.new(
  virtual_path:  'spree/admin/shared/_store_tabs',
  name:          'print_invoice_admin_configurations_menu',
  insert_bottom: '[data-hook="admin_settings_store_tabs"]',
  text:          '<%= settings_tab_item Spree.t(:settings, scope: :print_invoice), edit_admin_print_invoice_settings_path %>',
  original:      '4a76d47bc518a3b46ff202d6fbeae815be4d3432'
)
