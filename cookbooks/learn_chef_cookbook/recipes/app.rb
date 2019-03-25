# Look in the attributes/default.rb file to see how
# the node attributes are set.
package 'git'
package 'python-setuptools'

git node['dowload_dir'] do
  repository node['app_repo_url']
  action :sync
end

python_runtime '2' do
  provider :system
  options pip_version: true
  setuptools_version false
  wheel_version false
  virtualenv_version false
end

pip_requirements node['dowload_dir'] + '/requirements.txt'

bash 'sync_app' do
  code <<-EOL
    rsync -r /tmp/appdir/ /var/www/webapp
  EOL
end

file '/var/www/webapp/wsgi.py' do
  mode '0755'
end

web_app "webapp" do
   template 'apache.conf.erb'
end

directory '/var/www/' do
  owner node['apache_settings']['user']
  group node['apache_settings']['user']
  recursive true
  mode '0755'
end