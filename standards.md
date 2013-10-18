---
layout: default
username: BeDifferential
repo: meteor-boilerplate
version: 1.0.0
desc: Boilerplate meteor app

---

# Differential Meteor Coding Styles

## Coding Style

* Use soft-tabs with a two space indent.
* Keep lines fewer than 80 characters.
* Never leave trailing whitespace.
* Use spaces around operators, after commas, colons and semicolons, around ````{```` and before ````}````.

## Preferences

* All js will be written using coffeescript
* We prefer using certain packages with Meteor:

````
* Iron Router
* Accounts Entry
* Canonical
* Autoform
* Minimongoid
* Spiderable
* Phantomjs
````

## File Structure

* Break everything into client, server, or collection folders
* Client should have folders: compatibility, helpers, stylesheets, and views
* View folders will hold page specific templates, javascript, and stylesheets
* Reusable partial templates should start their file and template name with an underscore (````_````)
* Views should be broken out by a folder matching a path in the Iron Router mappings

##### Router.coffee
````
  @route 'vloggers',
      path: '/vloggers'

        @route 'vlogger',
            path: '/vlogger/:_id'

            ````

##### Folder structure
````
client
     └── views
                  ├── vloggers
                               |          ├── vloggers.html
                                            |          ├── vloggers.coffee
                                                         |          └── vloggers.less
                                                                      └── vlogger
                                                                                             └── vlogger.html

                                                                                             ````

##### Shared folder structure
````
client
     └── views
                  └──shared
                                       ├── _video.html
                                                            └── _video.coffee
                                                            ````

