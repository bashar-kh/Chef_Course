package 'tree' do
	action :install
end

package 'ntp' do
	action :install
end
package 'git' do
	action :install
end

file '/etc/motd' do
	content 'his server is the property of Bashar '
	owner 'root'
	group 'root'
	action :create
end
