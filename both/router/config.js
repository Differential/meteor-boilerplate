Router.configure({
  controller: 'AppController'
});

Router.plugin('loading', {loadingTemplate: 'loading'});
// Router.plugin('dataNotFound', {dataNotFoundTemplate: 'notFound'});
