#
# Cookbook Name:: tapir
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nmap" do
	action :install
end

package "qt4-qmake" do
	action :install
end

package "libnokogiri-ruby1.8" do
	action :install
end

package "libxslt-dev" do
	action :install
end

package "libxml2-dev" do
	action :install
end

package "libqt4-dev" do
	action :install
end

package "libpcap-dev" do
	action :install
end

package "libpq-dev" do
	action :install
end

package "libsqlite3-dev" do
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