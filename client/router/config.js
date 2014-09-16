Router.configure({
  layoutTemplate: 'mainLayout',
  yieldTemplates: {
    header: {
      to: 'header'
    },
    footer: {
      to: 'footer'
    }
  }
});
