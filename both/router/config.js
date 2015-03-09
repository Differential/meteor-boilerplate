Router.configure({
  controller: 'AppController',
  loadingTemplate: 'loading',
});

Router.plugin('dataNotFound', {dataNotFoundTemplate: 'notFound'});
