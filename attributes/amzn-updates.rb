# Encoding: utf-8

default['yum']['amzn-updates']['repositoryid'] = 'amzn-updates'
default['yum']['amzn-updates']['description'] = 'amzn-updates-Base'
default['yum']['amzn-updates']['mirrorlist'] = 'http://repo.us-east-1.amazonaws.com/$releasever/updates/mirror.list'
default['yum']['amzn-updates']['mirror_expire'] = '300'
default['yum']['amzn-updates']['metadata_expire'] = '300'
default['yum']['amzn-updates']['priority'] = '10'
default['yum']['amzn-updates']['failovermethod'] = 'priority'
default['yum']['amzn-updates']['fastestmirror_enabled'] = false
default['yum']['amzn-updates']['gpgcheck'] = true
default['yum']['amzn-updates']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
default['yum']['amzn-updates']['enabled'] = true
default['yum']['amzn-updates']['max_retries'] = '5'
default['yum']['amzn-updates']['timeout'] = '10'
default['yum']['amzn-updates']['report_instanceid'] = true
