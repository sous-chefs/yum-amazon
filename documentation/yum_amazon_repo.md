# yum_amazon_repo

Manages Amazon Linux 2023 yum/dnf repository configuration files in `/etc/yum.repos.d/`.

## Actions

| Action    | Description                        |
|-----------|------------------------------------|
| `:create` | Creates the repository (default)   |
| `:delete` | Removes the repository             |

## Properties

| Property          | Type             | Default                                                                                          | Description                          |
|-------------------|------------------|--------------------------------------------------------------------------------------------------|--------------------------------------|
| `repo_name`       | String           | name                                                                                             | Repository name (name property)      |
| `baseurl`         | String           |                                                                                                  | Base URL for the repository          |
| `cost`            | String           |                                                                                                  | Relative cost of accessing this repo |
| `description`     | String           | `'Amazon Linux 2023 repository'`                                                                 | Repository description               |
| `enabled`         | true, false      | `true`                                                                                           | Whether the repository is enabled    |
| `enablegroups`    | true, false      |                                                                                                  | Enable yum group support             |
| `exclude`         | String           |                                                                                                  | Packages to exclude                  |
| `failovermethod`  | String           |                                                                                                  | Failover method (priority/roundrobin)|
| `gpgcheck`        | true, false      | `true`                                                                                           | Enable GPG signature checking        |
| `gpgkey`          | String           | `'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023'`                                        | GPG key URL                          |
| `http_caching`    | String           |                                                                                                  | HTTP caching policy                  |
| `include_config`  | String           |                                                                                                  | Path to additional config file       |
| `includepkgs`     | String           |                                                                                                  | Packages to include                  |
| `keepalive`       | true, false      |                                                                                                  | Enable HTTP keepalive                |
| `max_retries`     | String           |                                                                                                  | Maximum retry attempts               |
| `metadata_expire` | String           |                                                                                                  | Metadata expiration time             |
| `mirror_expire`   | String           |                                                                                                  | Mirror list expiration time          |
| `mirrorlist`      | String           | `'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/$basearch/mirror.list'`             | Mirror list URL                      |
| `priority`        | String           |                                                                                                  | Repository priority                  |
| `proxy`           | String           |                                                                                                  | Proxy URL                            |
| `proxy_username`  | String           |                                                                                                  | Proxy username                       |
| `proxy_password`  | String           |                                                                                                  | Proxy password                       |
| `repositoryid`    | String           |                                                                                                  | Override the repository ID           |
| `sslcacert`       | String           |                                                                                                  | Path to SSL CA certificate           |
| `sslclientcert`   | String           |                                                                                                  | Path to SSL client certificate       |
| `sslclientkey`    | String           |                                                                                                  | Path to SSL client key               |
| `sslverify`       | true, false      |                                                                                                  | Enable SSL verification              |
| `timeout`         | String           |                                                                                                  | Connection timeout                   |

The default `mirrorlist` value is
`https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/$basearch/mirror.list`.

## Examples

### Main repository with defaults

```ruby
yum_amazon_repo 'amazonlinux'
```

### Debug and source repositories

```ruby
yum_amazon_repo 'amazonlinux-debuginfo' do
  description 'Amazon Linux 2023 repository - Debug'
  mirrorlist 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/debuginfo/$basearch/mirror.list'
  enabled false
end

yum_amazon_repo 'amazonlinux-source' do
  description 'Amazon Linux 2023 repository - Source packages'
  mirrorlist 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/SRPMS/mirror.list'
  enabled false
end
```

### Point at an internal mirror

```ruby
yum_amazon_repo 'amazonlinux' do
  mirrorlist nil
  baseurl 'https://internal.example.com/amazonlinux/2023/$basearch'
  sslverify false
end
```

### Remove a repository

```ruby
yum_amazon_repo 'amazonlinux-debuginfo' do
  action :delete
end
```
