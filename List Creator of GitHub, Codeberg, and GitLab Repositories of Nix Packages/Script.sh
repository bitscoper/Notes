#!/usr/bin/env bash
# By Abdullah As-Sadeed

set -euo pipefail

PACKAGE_LIST_FILE="${1:-Packages.txt}"
OUTPUT_HTML_FILE="${2:-Repositories.html}"

cat >"$OUTPUT_HTML_FILE" <<'HTML'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>GitHub, Codeberg, and GitLab Repositories of Nix Packages</title>
</head>
<body>
  <h1>GitHub, Codeberg, and GitLab Repositories of Nix Packages</h1>
  <table>
    <thead>
      <tr>
        <th>Package</th>
        <th>Repository</th>
      </tr>
    </thead>
    <tbody>
HTML

while read -r package; do
  [[ -z "$package" ]] && continue
  [[ "$package" =~ ^# ]] && continue

  homepage=$(
    nix eval --raw "nixpkgs#${package}.meta.homepage" 2>/dev/null || true
  )

  if [[ "$homepage" =~ ^https?://([^/]+\.)?(github|codeberg|gitlab)\. ]]; then
    cat >>"$OUTPUT_HTML_FILE" <<HTML
      <tr>
        <td><code>${package}</code></td>
        <td><a href="${homepage}">${homepage}</a></td>
      </tr>
HTML
  fi
done <"$PACKAGE_LIST_FILE"

cat >>"$OUTPUT_HTML_FILE" <<'HTML'
    </tbody>
  </table>
</body>
</html>
HTML

echo "Check $OUTPUT_HTML_FILE"
