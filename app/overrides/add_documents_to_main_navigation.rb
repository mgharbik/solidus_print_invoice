Deface::Override.new(
  virtual_path:  'spree/admin/shared/_menu',
  name:          'add_admin_document_tab',
  insert_bottom: '[data-hook="admin_tabs"]',
  partial:       'spree/admin/shared/document_tab',
  original:      'b7b242ee058673679949d7e3050be5974938294d'
)
