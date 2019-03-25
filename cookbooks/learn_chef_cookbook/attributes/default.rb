default['apache_settings'] = value_for_platform_family(
  ['rhel', 'fedora', 'suse']  => {'service' => 'httpd', 'user' => 'apache' },
  'debian'  => {'service' => 'apache2', 'user' => 'www-data' }
)

# Application settings.
default['app_repo_url']   = 'https://github.com/cloudacademy/flask-app'
default['dowload_dir']    = '/tmp/appdir'
