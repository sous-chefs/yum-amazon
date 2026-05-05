# Limitations

This cookbook manages Amazon Linux Yum repositories through the
`yum_amazon_repo` custom resource.

## Supported Platforms

This cookbook supports Amazon Linux 2023 only.

Amazon Linux 2023 was released on March 15, 2023 and AWS documents its end of
life as June 30, 2029, with standard support through June 30, 2027 and
maintenance support through June 30, 2029.

Amazon Linux 2 is intentionally not part of the active matrix. AWS has extended
Amazon Linux 2 end of support to June 30, 2026, which leaves it too close to EOL
for new modernization work. Amazon Linux 1 support was removed in version 4.0.0.

## Repository Structure

Amazon Linux 2023 ships with these repositories in
`/etc/yum.repos.d/amazonlinux.repo`.

### amazonlinux

Enabled by default.

* Description: Amazon Linux 2023 repository
* Mirror URL pattern: `https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/$basearch/mirror.list`
* GPG key: `file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023`

### amazonlinux-debuginfo

Disabled by default.

* Description: Amazon Linux 2023 repository - Debug
* Mirror URL pattern: `https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/debuginfo/$basearch/mirror.list`
* GPG key: `file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023`

### amazonlinux-source

Disabled by default.

* Description: Amazon Linux 2023 repository - Source packages
* Mirror URL pattern: `https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/SRPMS/mirror.list`
* GPG key: `file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023`

## Architecture Support

* x86_64: fully supported
* aarch64: fully supported

## Package Manager

Amazon Linux 2023 uses DNF as its default package manager. The `yum` command is
available as a compatibility alias. Chef's `yum_repository` resource manages
`/etc/yum.repos.d/*.repo` files that DNF reads.

## Package Constraints

Repository URL, mirrorlist, GPG key, and Yum options remain configurable
properties for users with pinned or private mirror requirements.

Amazon Linux 2023 uses versioned repositories. The `$releasever` variable in
mirror URLs resolves to a date-stamped version rather than a simple major version
number.
