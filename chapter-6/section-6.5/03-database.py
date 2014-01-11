#! /usr/bin/env python

import MySQLdb

# connect to the database
con = MySQLdb.connect('localhost', 'user', 'password', 'database');

# get a 'cursor' for interacting with the db
# 'MySQLdb.cursors.DictCursor' allows us to use column names in resultsets
cur = con.cursor(MySQLdb.cursors.DictCursor)

# run a query
cur.execute("SELECT * FROM Scientist")

# fetch all the rows of data
for r in cur.fetchall():
  print "{0} {1}".format(r["title"], r["family_name"])

# close the database connection
con.close()