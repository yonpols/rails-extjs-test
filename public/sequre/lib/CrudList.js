Ext.define('Sequre.lib.CrudList', {
  extend: 'Ext.grid.Panel',
  dockedItems: [
  {
    xtype: 'toolbar',
    items: [
      {
        itemId: 'btnCreate',
        text: 'Crear', 
        iconCls: 'icon-add',
      }, 
      '-', 
      {
        itemId: 'btnDelete',
        text: 'Eliminar',
        iconCls: 'icon-delete',
        disabled: true,
        handler: function()
        {
          var grid = this.up('gridpanel');
          var selection = grid.getView().getSelectionModel().getSelection()[0];
          if (selection) 
          {
            grid.getStore().remove(selection);
            grid.getStore().sync();
            grid.getStore().load();
          }
        }
    }]
  }],
  bbar: {
    xtype: 'pagingtoolbar',
    itemId: 'tbPaging',
    displayInfo: true
  },    
  initComponent: function() 
  {
    this.on('selectionchange', function(selections) {
      this.down('#btnDelete').setDisabled(selections.length === 0);
    });                        
    this.callParent(arguments);
    this.down('#tbPaging').bindStore(Ext.getStore(this.getStore()));
  }
});