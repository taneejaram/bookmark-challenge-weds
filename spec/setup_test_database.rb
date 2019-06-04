require 'pg'

  p "setting up test database"

  connection = PG.connect(dbname: 'bookmark_manager_test')

  #Clear the bookmarks table - empties table doesn't log each row specified in spec file
  connection.exec("TRUNCATE bookmarks;")
