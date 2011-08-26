Ext.define('SequreCRM.controller.Clients', {
  extend: 'Ext.app.Controller',
  views: [
    'client.List',
    'client.Edit'
  ],
  stores: ['Clients'],
  models: ['Client'],
  init: function() {
    this.control({
      'clientList': {
        itemdblclick: this.editClient
      },
      'clientList #btnCreate': {
        click: this.createClient
      },
      'clientEdit button#btSave': {
        click: this.updateClient
      }
    });
  },
  
  editClient: function(grid, record) {
    var edit = Ext.widget('clientEdit');
    edit.down('form').loadRecord(record);
  },
  createClient: function(button) {
    var edit = Ext.widget('clientEdit');
    var model = Ext.ModelManager.create({}, 'SequreCRM.model.Client');
    edit.down('form').loadRecord(model);
  },
  updateClient: function(button)
  {
    var win     = button.up('window'),
        form    = win.down('form'),
        record  = form.getRecord(),
        values  = form.getValues();

    record.set(values);
    record.save();
    win.close();
    this.getClientsStore().load();
  }
});