# Limitations

This cookbook manages Amazon Linux Yum repositories through the
`yum_amazon_repo` custom resource.

## Supported Platforms

The cookbook targets Amazon Linux 2023. Amazon Linux 2023 was released on
March 15, 2023 and AWS documents its end of life as June 30, 2029, with standard
support through June 30, 2027 and maintenance support through June 30, 2029.

Amazon Linux 2 is intentionally not part of the active matrix. AWS has extended
Amazon Linux 2 end of support to June 30, 2026, which leaves it too close to EOL
for new modernization work.

## Package Constraints

The resource wraps Chef Infra's `yum_repository` resource and writes repository
configuration for Amazon Linux package mirrors. Repository URL, mirrorlist, GPG
key, and Yum options remain configurable properties for users with pinned or
private mirror requirements.
