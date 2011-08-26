Ext.define('SequreCRM.store.Clients', {
  extend: 'Ext.data.Store',  
  model: 'SequreCRM.model.Client',
  storeId: 'Clients',
  autoLoad: true, 
  autoSync: true,
  remoteSort: true,
  pageSize: 20
});