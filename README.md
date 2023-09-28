# yum-amazon Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/yum-amazon.svg)](https://supermarket.chef.io/cookbooks/yum-amazon)
[![CI State](https://github.com/sous-chefs/yum-amazon/workflows/ci/badge.svg)](https://github.com/sous-chefs/yum-amazon/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

The yum-amazon cookbook takes over management of the default repositoryids that ship with Amazon Linux systems. It allows attribute manipulation of `amzn-main`, `amzn-main-debuginfo`, `amzn-nosrc`, `amzn-updates`, `amzn-updates-debuginfo`, `amzn-preview`, and `amzn-preview-debuginfo` on Amazon Linux 1 sytems. It allows attribute manipulation of 'amzn2-core', 'amzn2-core-source', 'amzn2-core-debuginfo' on Amazon Linux 2 systems.

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook maintainers working together to maintain important cookbooks. If you’d like to know more please visit sous-chefs.org or come chat with us on the Chef Community Slack in #sous-chefs.

## Requirements

### Platforms

- Amazon Linux
- Amazon Linux 2

### Chef

- Chef 12.14+

### Cookbooks

- none

## Attributes

The following attributes are set by default

```ruby
default['yum']['amzn-main']['description'] = 'amzn-main-Base'
default['yum']['amzn-main']['mirrorlist'] = 'http://repo.us-east-1.amazonaws.com/$releasever/main/mirror.list'
default['yum']['amzn-main']['mirror_expire'] = '300'
default['yum']['amzn-main']['metadata_expire'] = '300'
default['yum']['amzn-main']['priority'] = '10'
default['yum']['amzn-main']['failovermethod'] = 'priority'
default['yum']['amzn-main']['fastestmirror_enabled'] = false
default['yum']['amzn-main']['gpgcheck'] = true
default['yum']['amzn-main']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
default['yum']['amzn-main']['enabled'] = true
default['yum']['amzn-main']['managed'] = true
default['yum']['amzn-main']['max_retries'] = '5'
default['yum']['amzn-main']['timeout'] = '10'
default['yum']['amzn-main']['report_instanceid'] = true
```

```ruby
default['yum']['amzn-main-debuginfo']['repositoryid'] = 'amzn-main-debuginfo'
default['yum']['amzn-main-debuginfo']['description'] = 'amzn-main-debuginfo'
default['yum']['amzn-main-debuginfo']['mirrorlist'] = 'http://repo.us-east-1.amazonaws.com/$releasever/main/debuginfo/mirror.list'
default['yum']['amzn-main-debuginfo']['mirror_expire'] = '300'
default['yum']['amzn-main-debuginfo']['metadata_expire'] = '300'
default['yum']['amzn-main-debuginfo']['priority'] = '10'
default['yum']['amzn-main-debuginfo']['failovermethod'] = 'priority'
default['yum']['amzn-main-debuginfo']['fastestmirror_enabled'] = false
default['yum']['amzn-main-debuginfo']['gpgcheck'] = true
default['yum']['amzn-main-debuginfo']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
default['yum']['amzn-main-debuginfo']['enabled'] = false
default['yum']['amzn-main-debuginfo']['managed'] = false
default['yum']['amzn-main-debuginfo']['max_retries'] = '5'
default['yum']['amzn-main-debuginfo']['timeout'] = '10'
default['yum']['amzn-main-debuginfo']['report_instanceid'] = true
```

```ruby
default['yum']['amzn-nosrc']['repositoryid'] = 'amzn-nosrc'
default['yum']['amzn-nosrc']['description'] = 'amzn-nosrc-Base'
default['yum']['amzn-nosrc']['mirrorlist'] = 'http://repo.us-east-1.amazonaws.com/$releasever/nosrc/mirror.list'
default['yum']['amzn-nosrc']['mirror_expire'] = '300'
default['yum']['amzn-nosrc']['metadata_expire'] = '300'
default['yum']['amzn-nosrc']['priority'] = '10'
default['yum']['amzn-nosrc']['failovermethod'] = 'priority'
default['yum']['amzn-nosrc']['fastestmirror_enabled'] = false
default['yum']['amzn-nosrc']['gpgcheck'] = false
default['yum']['amzn-nosrc']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
default['yum']['amzn-nosrc']['enabled'] = false
default['yum']['amzn-nosrc']['managed'] = false
default['yum']['amzn-nosrc']['max_retries'] = '5'
default['yum']['amzn-nosrc']['timeout'] = '10'
default['yum']['amzn-nosrc']['report_instanceid'] = true
```

```ruby
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
default['yum']['amzn-updates']['managed'] = true
default['yum']['amzn-updates']['max_retries'] = '5'
default['yum']['amzn-updates']['timeout'] = '10'
default['yum']['amzn-updates']['report_instanceid'] = true
```

```ruby
default['yum']['amzn-updates-debuginfo']['repositoryid'] = 'amzn-updates-debuginfo'
default['yum']['amzn-updates-debuginfo']['description'] = 'amzn-updates-Base'
default['yum']['amzn-updates-debuginfo']['mirrorlist'] = 'http://repo.us-east-1.amazonaws.com/$releasever/updates/debuginfo/mirror.list'
default['yum']['amzn-updates-debuginfo']['mirror_expire'] = '300'
default['yum']['amzn-updates-debuginfo']['metadata_expire'] = '300'
default['yum']['amzn-updates-debuginfo']['priority'] = '10'
default['yum']['amzn-updates-debuginfo']['failovermethod'] = 'priority'
default['yum']['amzn-updates-debuginfo']['fastestmirror_enabled'] = false
default['yum']['amzn-updates-debuginfo']['gpgcheck'] = true
default['yum']['amzn-updates-debuginfo']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
default['yum']['amzn-updates-debuginfo']['enabled'] = false
default['yum']['amzn-updates-debuginfo']['managed'] = false
default['yum']['amzn-updates-debuginfo']['max_retries'] = '5'
default['yum']['amzn-updates-debuginfo']['timeout'] = '10'
default['yum']['amzn-updates-debuginfo']['report_instanceid'] = true
```

```ruby
default['yum']['amzn-preview']['repositoryid'] = 'amzn-preview'
default['yum']['amzn-preview']['description'] = 'amzn-preview-Base'
default['yum']['amzn-preview']['mirrorlist'] = 'http://repo.us-east-1.amazonaws.com/$releasever/preview/mirror.list'
default['yum']['amzn-preview']['mirror_expire'] = '300'
default['yum']['amzn-preview']['metadata_expire'] = '300'
default['yum']['amzn-preview']['priority'] = '10'
default['yum']['amzn-preview']['failovermethod'] = 'priority'
default['yum']['amzn-preview']['fastestmirror_enabled'] = false
default['yum']['amzn-preview']['gpgcheck'] = true
default['yum']['amzn-preview']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
default['yum']['amzn-preview']['enabled'] = false
default['yum']['amzn-preview']['managed'] = false
default['yum']['amzn-preview']['max_retries'] = '5'
default['yum']['amzn-preview']['timeout'] = '10'
default['yum']['amzn-preview']['report_instanceid'] = true
```

```ruby
default['yum']['amzn-preview-debuginfo']['repositoryid'] = 'amzn-preview-debuginfo'
default['yum']['amzn-preview-debuginfo']['description'] = 'amzn-preview-Base'
default['yum']['amzn-preview-debuginfo']['mirrorlist'] = 'http://repo.us-east-1.amazonaws.com/$releasever/preview/debuginfo/mirror.list'
default['yum']['amzn-preview-debuginfo']['mirror_expire'] = '300'
default['yum']['amzn-preview-debuginfo']['metadata_expire'] = '300'
default['yum']['amzn-preview-debuginfo']['priority'] = '10'
default['yum']['amzn-preview-debuginfo']['failovermethod'] = 'priority'
default['yum']['amzn-preview-debuginfo']['fastestmirror_enabled'] = false
default['yum']['amzn-preview-debuginfo']['gpgcheck'] = true
default['yum']['amzn-preview-debuginfo']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
default['yum']['amzn-preview-debuginfo']['enabled'] = false
default['yum']['amzn-preview-debuginfo']['managed'] = false
default['yum']['amzn-preview-debuginfo']['max_retries'] = '5'
default['yum']['amzn-preview-debuginfo']['timeout'] = '10'
default['yum']['amzn-preview-debuginfo']['report_instanceid'] = true
```

```ruby
default['yum']['amzn2-core']['repositoryid'] = 'amzn2-core'
default['yum']['amzn2-core']['description'] = 'Amazon Linux 2 core repository'
default['yum']['amzn2-core']['mirrorlist'] = 'http://amazonlinux.$awsregion.$awsdomain/$releasever/$product/latest/$basearch/mirror.list'
default['yum']['amzn2-core']['mirror_expire'] = '300'
default['yum']['amzn2-core']['metadata_expire'] = '300'
default['yum']['amzn2-core']['priority'] = '10'
default['yum']['amzn2-core']['failovermethod'] = 'priority'
default['yum']['amzn2-core']['fastestmirror_enabled'] = false
default['yum']['amzn2-core']['gpgcheck'] = true
default['yum']['amzn2-core']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2'
default['yum']['amzn2-core']['enabled'] = true
default['yum']['amzn2-core']['managed'] = true
default['yum']['amzn2-core']['max_retries'] = '5'
default['yum']['amzn2-core']['timeout'] = '10'
default['yum']['amzn2-core']['report_instanceid'] = true
```

```ruby
default['yum']['amzn2-core-source']['repositoryid'] = 'amzn2-core-source'
default['yum']['amzn2-core-source']['description'] = 'Amazon Linux 2 core repository - source packages'
default['yum']['amzn2-core-source']['mirrorlist'] = 'http://amazonlinux.$awsregion.$awsdomain/$releasever/$product/latest/SRPMS/mirror.list'
default['yum']['amzn2-core-source']['mirror_expire'] = '300'
default['yum']['amzn2-core-source']['metadata_expire'] = '300'
default['yum']['amzn2-core-source']['priority'] = '10'
default['yum']['amzn2-core-source']['failovermethod'] = 'priority'
default['yum']['amzn2-core-source']['fastestmirror_enabled'] = false
default['yum']['amzn2-core-source']['gpgcheck'] = true
default['yum']['amzn2-core-source']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2'
default['yum']['amzn2-core-source']['enabled'] = false
default['yum']['amzn2-core-source']['managed'] = true
default['yum']['amzn2-core-source']['max_retries'] = '5'
default['yum']['amzn2-core-source']['timeout'] = '10'
default['yum']['amzn2-core-source']['report_instanceid'] = true
```

```ruby
default['yum']['amzn2-core-debuginfo']['repositoryid'] = 'amzn2-core-debuginfo'
default['yum']['amzn2-core-debuginfo']['description'] = 'Amazon Linux 2 core repository - debuginfo packages'
default['yum']['amzn2-core-debuginfo']['mirrorlist'] = 'http://amazonlinux.$awsregion.$awsdomain/$releasever/$product/latest/debuginfo/$basearch/mirror.list'
default['yum']['amzn2-core-debuginfo']['mirror_expire'] = '300'
default['yum']['amzn2-core-debuginfo']['metadata_expire'] = '300'
default['yum']['amzn2-core-debuginfo']['priority'] = '10'
default['yum']['amzn2-core-debuginfo']['failovermethod'] = 'priority'
default['yum']['amzn2-core-debuginfo']['fastestmirror_enabled'] = false
default['yum']['amzn2-core-debuginfo']['gpgcheck'] = true
default['yum']['amzn2-core-debuginfo']['gpgkey'] = 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2'
default['yum']['amzn2-core-debuginfo']['enabled'] = false
default['yum']['amzn2-core-debuginfo']['managed'] = true
default['yum']['amzn2-core-debuginfo']['max_retries'] = '5'
default['yum']['amzn2-core-debuginfo']['timeout'] = '10'
default['yum']['amzn2-core-debuginfo']['report_instanceid'] = true
```

## Recipes

- default - Walks through node attributes and feeds a yum_resource
- parameters. The following is an example a resource generated by the
- recipe during compilation.

```ruby
  yum_repository 'amzn-main' do
    mirrorlist 'http://repo.us-east-1.amazonaws.com/$releasever/main/mirror.list'
    description 'amzn-main-Base'
    enabled true
    gpgcheck true
    gpgkey 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga'
  end
```

## Usage Example

To disable the amzn-updates repository through a Role or Environment definition

```ruby
default_attributes(
  :yum => {
    :amzn-updates => {
      :enabled => {
        false
       }
     }
   }
 )
```

Uncommonly used repositoryids are not managed by default. This is speeds up integration testing pipelines by avoiding yum-cache builds that nobody cares about. To enable the amzn-preview repository with a wrapper cookbook, place the following in a recipe:

```ruby
node.default['yum']['amzn-preview']['managed'] = true
node.default['yum']['amzn-preview']['enabled'] = true

include_recipe 'yum-amazon'
```

## More Examples

Point the base and updates repositories at an internally hosted server.

```ruby
node.default['yum']['amzn-main']['enabled'] = true
node.default['yum']['amzn-main']['mirrorlist'] = nil
node.default['yum']['amzn-main']['baseurl'] = 'https://internal.example.com/amzn-main/os/x86_64'
node.default['yum']['amzn-main']['sslverify'] = false

include_recipe 'yum-amazon'
```

## License & Authors

**Author:** Cookbook Engineering Team ([cookbooks@chef.io](mailto:cookbooks@chef.io))

**Copyright:** 2011-2016, Chef Software, Inc.

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
