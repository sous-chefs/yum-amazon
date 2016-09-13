name 'yum-amazon'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the Amazon linux yum repository'
version '1.0.0'

depends 'compat_resource', '>= 12.14.1'

supports 'amazon'

source_url 'https://github.com/chef-cookbooks/yum-amazon'
issues_url 'https://github.com/chef-cookbooks/yum-amazon/issues'

chef_version '>= 12.1'
