# Meteor Boilerplate - Material Design Version

A starting point for MeteorJS applications that use Material Design. Includes Iron Router, Materialize.css, AutoForm and more.

For our Bootstrap version, see the [master branch](https://github.com/Differential/meteor-boilerplate/tree/master).

* [Included Packages](#included-packages)
* [Installation](#installation)
* [File Structure](#file-structure)
* [SEO](#seo)
* [Favicons and Touch Icons](#favicons-and-touch-icons)
* [Seed Data](#seed-data)

## <a name="included-packages"></a> Included Packages

* [Material Design](http://www.google.com/design/spec/material-design/introduction.html)
  * [materialize:materialize](http://materializecss.com/)
  * [useraccounts:materialize](https://github.com/meteor-useraccounts/materialize)
  * [gildaspk:autoform-materialize](https://github.com/djhi/meteor-autoform-materialize/)
* Collections:
  * [dburles:collection-helpers](https://github.com/dburles/meteor-collection-helpers)
  * [matb33:collection-hooks](https://github.com/matb33/meteor-collection-hooks)
  * [reywood:publish-composite](https://github.com/englue/meteor-publish-composite)
  * [aldeed:autoform](https://github.com/aldeed/meteor-autoform)
  * [aldeed:collection2](https://github.com/aldeed/https://github.com/aldeed/meteor-collection2)
* Router:
  * [iron:router](https://github.com/EventedMind/iron-router)
  * [zimme:iron-router-active](https://github.com/zimme/meteor-iron-router-active)
  * [yasinuslu:blaze-meta](https://github.com/yasinuslu/blaze-meta)
* Authentication
  * [Meteor User Accounts](https://github.com/meteor-useraccounts/core)
  * [alanning:roles](https://github.com/alanning/meteor-roles)
* Seed Data
  * [dburles:factory](https://github.com/percolatestudio/meteor-factory)
  * [anti:fake](https://github.com/anticoders/meteor-fake/)
* Misc:
  * [Moment.js](http://momentjs.com/)
  * [Underscore.js](http://underscorejs.org/)
  * [Underscore.string](http://epeli.github.io/underscore.string/)
  * [cunneen:mailgun](https://github.com/cunneen/meteor-mailgun)

## <a name="installation"></a> Installation

1. Clone this repo to `<yourapp>`

  `git clone https://github.com/Differential/meteor-boilerplate.git <yourapp>`

2. Remove `.git`

  `cd <yourapp> && rm -rf .git`

3. Start coding!

## <a name="file-structure"></a> File Structure

We have a common file structure we use across all of our Meteor apps. Client-only files are stored in the `client` directory, server-only files are stored in the `server` directory, and shared files are stored in the `both` directory. The `private` and `public` directories are for either private or public assets.

## <a name="seo"></a> SEO

Page titles, meta descriptions and Facebook and Twitter meta tags are handled by the [yasinuslu:blaze-meta](https://github.com/yasinuslu/blaze-meta) package. Global settings are configured in `both/router/meta.js`, while individual page settings are set at the controller level.

* Note: the `spiderable` package will need to be installed and configured on your server in order for bots to read your meta tags.

```
PostsShowController = AppController.extend({
  path: '/posts/:_id',
  waitOn: function() {
    return this.subscribe('post', params._id);
  },
  data: function() {
    return {
      post: Post.find({_id: params._id})
    };
  },
  onAfterAction: function() {
    if(this.ready()) {
      Meta.setTitle(this.data().post.title);
    }
  }
});
```

## <a name="favicons-and-touch-icons"></a> Favicons and Touch Icons

Upload your image to http://realfavicongenerator.net/ and place the resulting images in `public/images/favicons`

## Seed Data

You can use the [dburles:factory](https://github.com/percolatestudio/meteor-factory) and [anti:fake](https://github.com/anticoders/meteor-fake/) packages to generate fake collection data for testing your UI. See `server/seeds.js` for an example:

```
Meteor.startup(function() {

  Factory.define('item', Items, {
    name: function() { return Fake.sentence(); },
    rating: function() { return _.random(1, 5); }
  });

  if (Items.find({}).count() === 0) {

    _(10).times(function(n) {
      Factory.create('item');
    });

  }

});

```
