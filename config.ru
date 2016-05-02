require "rubygems"
require "geminabox"

Geminabox.data = "/var/geminabox-data"

unless ENV['USERNAME'].nil? and  ENV['PASSWORLD'].nil?
  use Rack::Auth::Basic, "Protected Area" do |username, password|
      username == ENV['USERNAME'] && password == ENV['PASSWORD']
  end
end

run Geminabox::Server
