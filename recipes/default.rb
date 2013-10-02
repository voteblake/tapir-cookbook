#
# Cookbook Name:: tapir
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nmap" 
	action :install
end

package "qt4-qmake" 
	action :install
end

package "libnokogiri-ruby1.8" 
	action :install
end

package "libxslt-dev" 
	action :install
end

package "libxml2-dev" 
	action :install
end

package "libqt4-dev" 
	action :install
end

package "libpcap-dev" 
	action :install
end

package "libpq-dev" 
	action :install
end

package "libsqlite3-dev" 
	action :install
end

include_recipe "mongodb::default"

application "tapir" do
	path "/var/www/tapir"
	repository "https://github.com/pentestify/tapir.git"

	rails do
		gems "bundler"
		
	end

end