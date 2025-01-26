echo "FreeWeb v1.00"
echo "Usage: freeweb host <your HTML file here>"
find_html_file() {
  echo "freeweb host "
  read htmlfile
  if [[-f $htmlfile]]; then
    ruby app.rb
  else
    echo "404. File not found."
}
find_html_file()
