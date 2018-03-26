# $1 --> Name of a new directory where your template files will be created
# $2 --> Title which will be used inside the index.html template for both the HTML document title tag and one h1 tag

#!/usr/bin/env bash

# Create directory specified by user
mkdir $1
cd $1

# Create directories and some files within it
mkdir css images js
touch css/style.css js/main.js ./index.html

# Add content to html and css file

echo "<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./css/style.css">
  <title>$2</title>
</head>
<body>
  <h1>$2</h1>

</body>
</html>
" >> index.html

echo "h1 {
  color: blue;
}
" >> css/style.css
