#!/bin/bash
# Create a MySQL table from the header of a CSV file. Makes everything a VARCHAR field.
# Inspired by this post: http://stackoverflow.com/questions/9998596/create-mysql-table-directly-from-csv-file-using-the-csv-storage-engine/9998709#9998709
# You probably should not keep the user and pass in the args, this is a quick utility for data science work.
# Usage: ./create_table.sh filename.csv db_name table_name user pass
# @author: Joshua Rumbut joshua.rumbut@gmail.com
PWD=$(pwd)
d="LOAD DATA INFILE '${PWD}/${1}' INTO TABLE $3 FIELDS TERMINATED BY ',' ENCLOSED BY '\"' IGNORE 1 LINES;"
sql_statement=$d
echo $sql_statement
mysql -u$4 -p$5 $2 -e "$sql_statement"
