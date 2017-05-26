package 'tree' do
	action :install
end

package 'ntp' do
	action :install
end

package 'emacs'

package 'git' do
	action :install
end


file '/etc/motd' do
	content "his server is the property of Bashar 
	HOSTNAME : #{node['hostname']}
	IPADDRESS:#{node['ipaddress']}
	CUP: #{node['cpu']['0']['mhz']}
	MEMMORY:#{node['memory']['total']}
"
	owner 'root'
	group 'root'
	action :create
end
