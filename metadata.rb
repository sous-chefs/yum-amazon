# frozen_string_literal: true

name              'yum-amazon'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
description       'Installs and configures the Amazon Linux 2023 yum repository'
version           '4.0.12'
source_url        'https://github.com/sous-chefs/yum-amazon'
issues_url        'https://github.com/sous-chefs/yum-amazon/issues'

supports 'amazon'

chef_version '>= 15.3'
