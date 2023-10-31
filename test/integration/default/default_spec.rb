describe yum.repo('amzn2-core') do
  #  TODO: reenable when we have a new release of InSpec.
  #  This seems to be a bug with the yum resource
  # it { should_not be_enabled }
  it { should exist }
  its('mirrors') { should match %r{http://amazonlinux.us-west-2.amazonaws.com/2023.2\.[^/]+/\$product/latest/(x86_64|aarch64)/mirror.list} }
end

describe yum.repo('amzn2-core-debuginfo') do
  it { should_not be_enabled }
  it { should exist }
  its('mirrors') { should match %r{http://amazonlinux.us-west-2.amazonaws.com/2023.2\.[^/]+/\$product/latest/debuginfo/(x86_64|aarch64)/mirror.list} }
end

describe yum.repo('amzn2-core-source') do
  it { should_not be_enabled }
  it { should exist }
  its('mirrors') { should match %r{http://amazonlinux.us-west-2.amazonaws.com/2023.2\.[^/]+/\$product/latest/SRPMS/mirror.list} }
end
