# Migration Guide

## Migrating to custom resources

The yum-amazon cookbook now exposes repository management through the
`yum_amazon_repo` custom resource. Legacy recipes and node attributes are no
longer part of the public API; declare each repository explicitly with resource
properties instead.

## Replacing recipe usage

Replace cookbook recipe includes with direct resource declarations in your own
cookbook recipes.

```ruby
yum_amazon_repo 'amazonlinux'

yum_amazon_repo 'amazonlinux-debuginfo' do
  description 'Amazon Linux 2023 repository - Debug'
  mirrorlist 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/debuginfo/$basearch/mirror.list'
  enabled false
end
```

## Replacing node attributes

Move repository values from node attributes to resource properties.

```ruby
yum_amazon_repo 'amazonlinux' do
  mirrorlist nil
  baseurl 'https://internal.example.com/amazonlinux/2023/$basearch'
  sslverify false
end
```

The test cookbook at `test/cookbooks/test/recipes/default.rb` contains a
complete example that creates the default, debuginfo, and source repositories.
