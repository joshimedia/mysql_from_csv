mysql_from_csv
==============

A quick sh script to create a MySQL table from a CSV file with a header line.

# Create a MySQL table from the header of a CSV file. Makes everything a VARCHAR field.
# Inspired by this post: http://stackoverflow.com/questions/9998596/create-mysql-table-directly-from-csv-file-using-the-csv-storage-engine/9998709#9998709
# You probably should not keep the user and pass in the args, this is a quick utility for data science work.
# Usage: ./create_table.sh filename.csv db_name table_name user pass
# @author: Joshua Rumbut first_name.last_name@gmail.com
