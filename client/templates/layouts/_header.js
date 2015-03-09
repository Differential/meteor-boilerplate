Template._header.rendered = function() {
  Meteor.setTimeout(function() {
    this.$('.dropdown-button').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrain_width: false,
      hover: false,
      alignment: 'right',
      gutter: 0,
      belowOrigin: true
    });

    this.$('.button-collapse').sideNav({menuWidth: 240, activationWidth: 70});
  }.bind(this), 200);
};
