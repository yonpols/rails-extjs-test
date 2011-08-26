Ext.define('SequreCRM.view.client.List', {
    extend: 'Sequre.lib.CrudList',
    alias: 'widget.clientList',

    title: 'Clientes',
    store: 'Clients',
    columns: [
      {dataIndex: 'name',     text: 'Nombre', sortable: true, field: 'textfield', width: 200}, 
      {dataIndex: 'address',  text: 'Dirección', field: 'textfield', flex: 1}, 
      {dataIndex: 'phone',    text: 'Teléfono', field: 'textfield', width: 150}, 
      {dataIndex: 'email',    text: 'Email', field: 'textfield', width: 200}
    ]
});