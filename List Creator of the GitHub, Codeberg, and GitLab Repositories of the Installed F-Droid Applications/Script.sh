#!/usr/bin/env bash
# By Abdullah As-Sadeed

OUTPUT_HTML_FILE="Repositories.html"

echo "<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>GitHub, Codeberg, and GitLab Repositories of the Installed F-Droid Applications</title>
</head>
<body>
<h1>GitHub, Codeberg, and GitLab Repositories of the Installed F-Droid Applications</h1>
<ul>" >"$OUTPUT_HTML_FILE"

fdroidcl search -i -q | while read package; do
  source_code=$(fdroidcl show "$package" | grep -i "Source Code" | sed 's/.*: //')

  if echo "$source_code" | grep -E -q "github|codeberg|gitlab"; then
    echo "<li><a href=\"$source_code\">$package</a></li>" >>"$OUTPUT_HTML_FILE"
  fi
done

echo "</ul></body></html>" >>"$OUTPUT_HTML_FILE"

echo "Check $OUTPUT_HTML_FILE"
