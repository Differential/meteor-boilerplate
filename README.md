# meteor-boilerplate

A starting point for meteorjs applications, includes Iron Router, Bootstrap 3, Font Awesome, LESS and more.

## What's included

* [File Structure](#file-structure)
* Collections:
  * [dburles:collection-helpers](https://github.com/dburles/meteor-collection-helpers)
  * [matb33:collection-hooks](https://github.com/matb33/meteor-collection-hooks)
  * [mrt:publish-with-relations](https://github.com/svasva/meteor-publish-with-relations)
* Router:
  * [Iron Router](https://github.com/EventedMind/iron-router)
  * [zimme:iron-router-active](https://github.com/zimme/meteor-iron-router-active)
  * [mrt:iron-router-progress](https://github.com/Multiply/iron-router-progress/)
  * [manuelschoebel:ms-seo](https://github.com/DerMambo/ms-seo)
* Authentication
  * [joshowens:accounts-entry](https://github.com/Differential/accounts-entry/)
  * [alanning:roles](https://github.com/alanning/meteor-roles)
* [Less](http://lesscss.org)
  * [Bootstrap](http://getbootstrap.com)
  * [Font Awesome](http://fontawesome.io)
* Misc:
  * [Moment.js](http://momentjs.com/)
  * [Underscore.js](http://underscorejs.org/)
  * [Underscore.string](http://epeli.github.io/underscore.string/)

## Installation

Simply clone and run `meteor`.

## <a name="file-structure"></a> File Structure

We have a common file structure we use across all of our Meteor apps. Client-only files are stored in the `client` directory, server-only files are stored in the `server` directory, and shared files are stored in the root. Our structure also keeps view-dependent files together (`.html`, `.less`, `.js`).

```
.meteor
client
  ├── accounts
  ├── compatibility
  ├── router
  └── stylesheets
    └── lib
      ├── bootstrap.css
      └── font-awesome.css
    ├── global.less
    ├── mixins.less
    └── variables.less
  └── views
    └── dashboard
      ├── dashboard.html
      ├── dashboard.less
      └── dashboard.js
    └── home
      ├── home.html
      ├── home.less
      └── home.js
    ├── footer.html
    ├── header.html
    ├── index.html
    └── loading.html
collections
  └── items.js
packages
public
  ├── fonts
  ├── images
  └── favicon.ico
server
  ├── views
  ├── accounts.coffee
  ├── permissions.coffee
  └── publications.js
```

## Using Bootstrap and Less

Most of Bootstrap can be customized with Less variables. If you look in `client/stylesheets/bootstrap/variables.import.less` you will see a slew of configuration variables that can be tweaked to drastically change the look and feel of your site without having to write a single line of CSS.

If you'd like to override a feature of Bootstrap that can't be modified using variables, simply create a new file in `bootstrap-ext` named after the corresponding Bootstrap file, and make your changes there.

## SEO

Page titles, meta descriptions and Facebook and Twitter meta tags are handled by the [manuelschoebel:ms-seo](https://github.com/DerMambo/ms-seo) package. Global settings are configured in `seo.js`, while individual page settings are set at the route or controller level.
