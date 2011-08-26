Ext.define('SequreCRM.model.Client', {
    extend: 'Ext.data.Model',
    fields: ['id', 'name', 'address', 'phone', 'email'],
    proxy: {
      type: 'rest',
      url: '/clients',
      format: 'json',
      reader: {
        type: 'json',
        root: 'data',
        totalProperty: 'count'
      }
    }
});