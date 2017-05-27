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


template '/etc/motd' do
	source 'motd.erb'
	owner 'root'
	group 'root'
	action :create
end
