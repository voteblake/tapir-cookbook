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

case node[:platform]
when "centos", "redhat"
	package "qt4-devel" do
		action :install
	end
else
	package "qt4-qmake" do
		action :install
	end
end

package "compat-readline5" do
	action :install
end

package "ruby-libs" do
	action :install
end

package "ruby" do
	action :install
end

package "ruby-irb" do
	action :install
end

package "ruby-rdoc" do
	action :install
end

package "rubygems" do
	action :install
end

package "rubygem-nokogiri" do
	action :install
end

case node[:platform]
when "centos", "redhat"
	package "libxslt-devel" do
		action :install
	end
else
	package "libxslt-dev" do
		action :install
	end
end

case node[:platform]
when "centos", "redhat"
	package "ruby-nokogiri" do
		action :install
	end
else
	package "libnokogiri-ruby1.8" do
		action :install
	end
end

case node[:platform]
when "centos", "redhat"
	package "libxml2-devel" do
		action :install
	end
else
	package "libxml2-dev" do
		action :install
	end
end

case node[:platform]
when "centos", "redhat"
	package "qt-devel" do
		action :install
	end
else
	package "libqt4-dev" do
		action :install
	end
end

case node[:platform]
when "centos", "redhat"
	package "libpcap-devel" do
		action :install
	end
else
	package "libpcap-dev" do
		action :install
	end
end

case node[:platform]
when "centos", "redhat"
	package "postgresql-devel" do
		action :install
	end
else
	package "libpq-dev" do
		action :install
	end
end

case node[:platform]
when "centos", "redhat"
	package "sqlite-devel" do
		action :install
	end
else
	package "libsqlite3-dev" do
		action :install
	end
end

include_recipe "mongodb::default"

include_recipe "git"

include_recipe "build-essential"

if node[:platform] == "centos"
	package "qtwebkit-devel" do
		action :install
	end
	package "qtwebkit" do
		action :install
	end
	ENV['PATH'] = "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin:/usr/lib64/qt4/bin"
end

application "tapir" do
	path "/var/www/tapir"
	repository "https://github.com/pentestify/tapir.git"

	rails do
		gems ["bundler"]
	end
end