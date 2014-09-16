# meteor-boilerplate

A starting point for meteorjs applications, includes Iron Router, Bootstrap 3, Font Awesome, LESS and Coffeescript.

## What's included

* File Structure
* Collections:
  * dburles:collection-helpers
  * mrt:publish-with-relations
* Router:
  * <a href="https://github.com/EventedMind/iron-router" target="_blank">Iron Router</a>
  * zimme:iron-router-active
  * mrt:iron-router-progress
  * manuelschoebel:ms-seo
* Authentication
  * <a href="http://github.differential.io/accounts-entry" target="_blank">Accounts-Entry</a>
  * alanning:roles
* <a href="http://lesscss.org/" target="_blank">LESS</a>
  * <a href="http://getbootstrap.com" target="_blank">Bootstrap 3.1.1</a>
  * <a href="http://fontawesome.io/" target="_blank">Font Awesome 4.1.0</a>
* Misc:
  * Moment.js
  * Underscore.js
  * Underscore string

## Installation

Simply clone and run `meteor`.

## File Structure

We have a common file structure we use across all of our meteorjs apps. The structure keeps view-dependent files together (`.html`, `.less`, `.js`).

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
  └── favicon.ico
server
  ├── views
  ├── accounts.coffee
  └── publications.js
```

## TODO

* Describe bootstrap file structure and customization
* Describe SEO
