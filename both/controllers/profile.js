ProfileController = AppController.extend({
  data: {
    // user: this.user()
  },
  onAfterAction: function () {
    Meta.setTitle('Profile');
  }
});
