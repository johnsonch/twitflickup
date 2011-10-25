require 'yaml'

namespace "sl" do
  desc "Open up a tunnel to Saucelabs"
  task "connect" do
    begin
      config = YAML::load(File.open("#{Rails.root}/config/ondemand.yml"))
      if config['username'] && config['access_key']
        system "java -jar vendor/sauce/Sauce-Connect.jar #{config['username']} #{config['access_key']}"
      else
        puts "Connection failed! Both 'username' and 'access_key' are required. Check to make sure config/ondemand.yml is correct."
      end
    rescue
      puts "Couldn't find Saucelabs config file. Please create config/ondemand.yml"
    end
  end
end
