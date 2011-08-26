Ext.Loader.setPath('Sequre', 'sequre');
Ext.application({
    name: 'SequreCRM',
    appFolder: 'app',
    controllers: 
    [
      'Clients'
    ],
    launch: function() {
        Ext.create('Ext.container.Viewport', {
            layout: 'fit',
            items: [
                {
                    xtype: 'clientList'
                }
            ]
        });
    }
});