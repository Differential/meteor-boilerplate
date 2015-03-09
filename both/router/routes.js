Router.route('/', {
  name: 'home'
});

<<<<<<< HEAD
Router.route('/dashboard');

Router.route('/items/new', {
  name: 'items.new'
=======
Router.route('/dashboard', {
  name: 'dashboard'
});

Router.plugin('ensureSignedIn', {
  only: ['dashboard']
>>>>>>> origin/master
});
