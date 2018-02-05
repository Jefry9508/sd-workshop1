service "httpd" do
  action [:enable, :start]
end

cookbook_file '/var/www/html/index.html' do
	source 'index.html'
	mode '0755'
	owner 'vagrant'
	group 'vagrant'
        action :create
end

template '/var/www/html/welcome.html' do
	source 'welcome.erb'
	mode 0644
	owner 'root'
	group 'wheel'
	variables(
		:name => node[:name]
	)
end
