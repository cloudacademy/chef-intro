name 'learn_chef_cookbook'
maintainer 'Jeremy Cook'
maintainer_email 'jeremy.cook@cloudacademy.com'
license 'all_rights'
description 'Installs/Configures learn_chef_cookbook'
long_description 'Installs/Configures learn_chef_cookbook'
version '0.1.5'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/learn_chef_cookbook/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/learn_chef_cookbook' if respond_to?(:source_url)

# These will be installed with Berkshelf
#depends 'mysql', '= 7.0.0'
depends 'mysql', '~> 8.5.1'

#depends 'mysql2_chef_gem', '~> 1.1.0'
depends 'mysql2_chef_gem', '~> 2.1.0'

depends 'database', '~> 6.1.1'

#depends 'poise-python', '~> 1.5.1'
depends 'poise-python', '~> 1.7.0'

depends 'apache2', '~> 3.2.2'
#depends  'apache2', '~> 7.0.0'