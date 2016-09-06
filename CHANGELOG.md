# yum-amazon Cookbook CHANGELOG
This file is used to list changes made in each version of the yum-amazon cookbook.

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
