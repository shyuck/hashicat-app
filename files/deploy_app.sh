cd /root/hashicat-aws
git status
git branch update
git checkout update
git add .
git commit -a -m "Updated HTML payload"
git push --set-upstream origin update
git request-pull HEAD~1 $REPO_URL update
#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${PREFIX}'s app I'm GsNeotek's Cedric. Replace this text with your own.
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
