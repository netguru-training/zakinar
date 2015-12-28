Zakinar App
================

[![Show on Heroku](https://www.herokucdn.com/deploy/button.png)](http://morning-dusk-1947.herokuapp.com)

## Description

If you are a passionate of a latest news, who like to be up to date with the newest information, this page is made for you!

Our application is a smaller version of Pintereset.com, where user can add notes to category and follow his favorites categories.

### :closed_lock_with_key: Technology stack
-------------

| Name |  Version |
| :--: | :---: |
| [Ruby](https://www.ruby-lang.org) | 2.2.0 |
| [Ruby on Rails](http://www.rubyonrails.org/) | 4.2.0


## Setup

Try to follow this steps, if you want to configure the application:

#### Step 0: clone the source code of application
```
$ git clone
git@github.com:netguru-training/zakinar.git
```

#### Step 1: Install necessary gems
```
$ bundle Install
```

#### Step 2: Copy the database

Rename the file `database.yml.sample`, which is located in the `config` folder.
```
 $ cp config/database.yml.sample config/database.yml
```

#### Step 3: Create the databse, seeds and run migrations
```
$ rake db:Setup
```

#### Step 4: Create local server to run application
```
$ rails s
```

#### Step 5: View the site
Go to localhost:3000 in your browser.

###### Enjoy!
