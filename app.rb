require 'webrick'

# Define the root directory where files will be served from
root = File.expand_path('public', __dir__)

# Create the WEBrick server
server = WEBrick::HTTPServer.new(
  Port: 8000,
  DocumentRoot: root
)

# Gracefully shutdown the server on interrupt signal
trap 'INT' do
  server.shutdown
end

# Start the server
server.start
