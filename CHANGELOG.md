# yum-amazon Cookbook CHANGELOG

This file is used to list changes made in each version of the yum-amazon cookbook.

## Unreleased

- Use a regexp match in the tests so we don't need to fix the test every month

## 4.0.5 - *2023-09-29*

- Standardise files with files in the repo-management

## 4.0.4 - *2023-02-14*

- Standardise files with files in the repo-management

## 4.0.3 - *2023-02-14*

- Standardise files with files in the repo-management

## 4.0.2 - *2021-08-31*

- Standardise files with files in sous-chefs/repo-management

## 4.0.1 - *2021-06-01*

- Standardise files with files in sous-chefs/repo-management

## 4.0.0 - *2021-03-09*

- Sous Chefs Adoption
- Remove Amazonlinux version 1 support
- Add InSpec tests
- Linting
- Fix rspec

## 3.1.0 (2019-11-18)

- Add support for Amazon Linux 2 - [@bheusinkveld](https://github.com/bheusinkveld)
- Add code owners file - [@tas50](https://github.com/tas50)
- Rename the kitchen config - [@tas50](https://github.com/tas50)
- Remove stove from the gemfile - [@tas50](https://github.com/tas50)
- Cookstyle fixes - [@tas50](https://github.com/tas50)
- Update for Chef 15 license agreement and Chef Workstation - [@tas50](https://github.com/tas50)

## 3.0.0 (2018-02-16)

- Require Chef 12.14+ and remove compat_resource dep

## 2.0.2 (2017-04-26)

- Switch from Rake testing to Local Delivery
- Update apache2 license string

## 2.0.1 (2016-12-22)

- Remove extra line
- Depend on the latest compat_resource cookbook

## 2.0.0 (2016-11-26)

- Clarify that we require Chef 12.1 not 12.0
- Require compat_resource instead of yum

## 1.0.0 (2016-09-06)

- Update testing framework
- Add chef_version metadata
- Remove support for Chef 11

## v0.2.3 (2015-12-01)

- Fixing if/unless logic in recipe

## v0.2.2 (2015-10-28)

- Fixing Chef 13 deprecation warnings by not passing nils

## v0.2.1 (2014-09-22)

- Merge 0.2.0 changes with 0.1.6 release changes

## v0.1.6 (2015-09-21) <-- This came after 0.2.0 since 0.2.0 was not in git and was later merged

- Update yum depencency from ~3.0 to ~3.2
- Add supports metadata for Amazon Linux
- Add source_url and issues_url metadata
- Add a .foodcritic file
- Add standard Chef gitignore and chefignore files
- Move the .kitchen.yml file to .kitchen.cloud.yml and add a standard kitchen.yml for vagrant testing
- Add the standard chef rubocop config
- Update Travis to test on modern Ruby versions
- Update berskfile to 3.X format
- Update contributing, maintainers, and testing docs
- Add standard Gemfile with testing and development dependencies
- Add a Guardfile
- Add Travis CI and cookbook version badges in the readme
- Expand the requirements section in the readme
- Add rakefile for simpler testing

## v0.2.0 (2014-02-14)

- All repos except for the main/updates repos are now set to enabled = false and managed = false. Attributes will need to be set if you'd like to manage these repositories

## v0.1.5

- Guarding against running outside ec2

## v0.1.4

Adding CHANGELOG.md

## v0.1.0

initial release
