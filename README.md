# yum-amazon Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/yum-amazon.svg)](https://supermarket.chef.io/cookbooks/yum-amazon)
[![CI State](https://github.com/sous-chefs/yum-amazon/workflows/ci/badge.svg)](https://github.com/sous-chefs/yum-amazon/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

The yum-amazon cookbook provides the `yum_amazon_repo` custom resource for managing Amazon Linux 2023 yum/dnf repository configuration.

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook maintainers working together to maintain important cookbooks. If you'd like to know more please visit [sous-chefs.org](https://sous-chefs.org) or come chat with us on the Chef Community Slack in #sous-chefs.

## Requirements

### Platforms

- Amazon Linux 2023

### Chef

- Chef >= 15.3

### Cookbooks

- none

## Resources

### yum_amazon_repo

See [documentation/yum_amazon_repo.md](documentation/yum_amazon_repo.md) for full property reference.

#### Actions

- **`:create`** — Creates the repository (default)
- **`:delete`** — Removes the repository

#### Examples

```ruby
# Main repository with defaults
yum_amazon_repo 'amazonlinux'

# Debug repository (disabled)
yum_amazon_repo 'amazonlinux-debuginfo' do
  description 'Amazon Linux 2023 repository - Debug'
  mirrorlist 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/debuginfo/$basearch/mirror.list'
  enabled false
end

# Source repository (disabled)
yum_amazon_repo 'amazonlinux-source' do
  description 'Amazon Linux 2023 repository - Source packages'
  mirrorlist 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/SRPMS/mirror.list'
  enabled false
end

# Point at an internal mirror
yum_amazon_repo 'amazonlinux' do
  mirrorlist nil
  baseurl 'https://internal.example.com/amazonlinux/2023/$basearch'
  sslverify false
end

# Remove a repository
yum_amazon_repo 'amazonlinux-debuginfo' do
  action :delete
end
```

## License & Authors

**Author:** Cookbook Engineering Team ([cookbooks@chef.io](mailto:cookbooks@chef.io))

**Copyright:** 2013-2025, Chef Software, Inc.

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
