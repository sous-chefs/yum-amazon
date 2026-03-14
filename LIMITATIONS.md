# Limitations

## Supported Platforms

This cookbook supports **Amazon Linux 2023** only.

Amazon Linux 2 reached end-of-life on June 30, 2025 and is no longer supported.
Amazon Linux 1 support was removed in version 4.0.0.

## Repository Structure

Amazon Linux 2023 ships with the following repositories in `/etc/yum.repos.d/amazonlinux.repo`:

### amazonlinux (enabled by default)

- **Description**: Amazon Linux 2023 repository
- **Mirror URL pattern**: `https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/$basearch/mirror.list`
- **GPG key**: `file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023`

### amazonlinux-debuginfo (disabled by default)

- **Description**: Amazon Linux 2023 repository - Debug
- **Mirror URL pattern**: `https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/debuginfo/$basearch/mirror.list`
- **GPG key**: `file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023`

### amazonlinux-source (disabled by default)

- **Description**: Amazon Linux 2023 repository - Source packages
- **Mirror URL pattern**: `https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/SRPMS/mirror.list`
- **GPG key**: `file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023`

## Architecture Support

- **x86_64**: Fully supported
- **aarch64 (ARM64)**: Fully supported

## Package Manager

Amazon Linux 2023 uses **DNF** as its default package manager. The `yum` command is
available as a compatibility alias. Chef's `yum_repository` resource manages
`/etc/yum.repos.d/*.repo` files which DNF reads.

## Known Issues

- AL2023 uses versioned/deterministic repositories. The `$releasever` variable in
  mirror URLs resolves to a date-stamped version (e.g. `2023.6.20241212`) rather
  than a simple major version number.
