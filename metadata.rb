# frozen_string_literal: true

name              'yum-amazon'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
description       'Provides yum_amazon_repo resource for managing Amazon Linux 2023 repositories'
version           '5.0.0'
source_url        'https://github.com/sous-chefs/yum-amazon'
issues_url        'https://github.com/sous-chefs/yum-amazon/issues'

supports 'amazon'

chef_version '>= 15.3'
