Deface::Override.new(
  virtual_path:  'spree/admin/shared/_order_submenu',
  name:          'print_invoice_order_tab_links',
  insert_bottom: '[data-hook="admin_order_tabs"]',
  partial:       'spree/admin/orders/print_invoice_order_tab_links',
  original:      '29164565320a8b59ef605fb38b226d152999e0db'
)
