User story
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

Setting up a new database:
```brew install postgresql```

```ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist```

```psql postgres```

```CREATE DATABASE "database_name";```

Creating a table in database:
```\c database_name```

```CREATE TABLE table_name (column_name type)```
