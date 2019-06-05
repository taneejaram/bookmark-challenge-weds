# User story
```
As an internet User
I want to be able to see a list of Bookmarks
So that I can easily navigate to pages I often visit
```

```
As a time-pressed user
So that I can save a website
I would like to add the site address and title to bookmark manager
```

![alt text](https://github.com/taneejaram/bookmark-challenge/blob/master/image/Domain%20Model.jpg "Domain Model")

# Setting up a new database:
```brew install postgresql```

```ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

```psql postgres
```

```CREATE DATABASE "database_name";
```

# Creating a table in database:
```\c database_name
```

```CREATE TABLE table_name (column_name type)
```

# Setting up a test environment
A test environment that runs locally on your computer whenever you run your tests. It comes into being especially for your tests, and disappears straight after your tests finish. (Walkthrough - step 9).


-Setup so the databases are used in the correct contexts i.e. the tests will get data explicitly from bookmark_manager_test database.
```if ENV['ENVIRONMENT'] == 'test'
  connection = PG.connect(dbname: 'bookmark_manager_test')
else
  connection = PG.connect(dbname: 'bookmark_manager')
```

-Wrote a helper method that truncates the bookmarks table for test env before each test run.
```
require 'pg'

def setup_test_database
  p "setting up test database"

  connection = PG.connect(dbname: 'bookmark_manager_test')

  #Clear the bookmarks table - empties table doesn't log each row specified in spec file
  connection.exec("TRUNCATE bookmarks;")
end
```

-This is made automatic by some rspec code:
```
RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end
```
