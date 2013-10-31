---
layout: default
username: BeDifferential
repo: meteor-boilerplate
desc: Boilerplate meteorjs app

---
# meteor-boilerplate

A starting point for meteorjs applications, includes Iron Router, Bootstrap 3, Font Awesome, LESS and Coffeescript.

## What's included

* File Structure
* Coffeescript
* LESS
* <a href="https://github.com/EventedMind/iron-router" target="_blank">Iron Router</a>
* <a href="http://github.differential.io/accounts-entry" target="_blank">Accounts-Entry</a>
* <a href="http://getbootstrap.com" target="_blank">Bootstrap 3</a>
* <a href="hhttp://fontawesome.io/" target="_blank">Font Awesome 4</a>

## Installation

Make sure you have Meteor and [Meteorite](https://github.com/oortcloud/meteorite/) installed, and then clone locally and run with `mrt`

## File structure

We have a common file structure we use across all of our meteorjs apps. The structure keeps view-dependent files together (html, less, coffee).

```
.meteor
client
  └── stylesheets
    └── global.less
    └── variables.less
  └── views
    └── dashboard
      ├── dashboard.html
      ├── dashboard.less
      └── dashboard.coffee
    └── home
      ├── home.html
      ├── home.less
      └── home.coffee
    └── index.html
    └── header.html
    └── footer.html
collections
packages
public
  ├── fonts
  └── img
server

```