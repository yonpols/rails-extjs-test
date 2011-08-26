Ext.define('SequreCRM.view.client.Edit', {
  extend: 'Ext.window.Window',
  alias: 'widget.clientEdit',

  title : 'Edit User',
  layout: 'fit',
  autoShow: true, 
  activeItem: 'tfName',
     
  items: [
    {
      xtype: 'form',
      itemId: 'frEditClient',
      items: [
        {
          xtype: 'textfield',

          itemId: 'tfName',
          name: 'name',
          fieldLabel: 'Nombre'
        },
        {
          xtype: 'textarea',

          itemId: 'taAddress',
          name: 'address',
          fieldLabel: 'Dirección'
        },
        {
          xtype: 'textfield',

          itemId: 'tfPhone',
          name: 'phone',
          fieldLabel: 'Teléfono'
        },
        {
          xtype: 'textfield',

          itemId: 'tfEmail',
          name: 'email',
          fieldLabel: 'Email'
        }
      ]
    }
  ],
  buttons: [
    { itemId: 'btSave', text: 'Guardar' },
    { itemId: 'btCancel', text: 'Cancelar' }  
  ],
  
  initComponent: function() {
    this.callParent(arguments);
    this.down('button#btCancel').on('click', function() {
      this.up('clientEdit').close();
    });
  }
});