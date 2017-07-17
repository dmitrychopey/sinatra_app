SinatraApp.use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == ENV['LOGIN'] and password == ENV['PASSWORD']
end
