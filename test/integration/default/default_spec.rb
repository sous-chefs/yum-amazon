describe yum.repo('amzn2-core') do
  it { should be_enabled }
  it { should exist }
  its('mirrors') { should cmp 'http://amazonlinux.default.amazonaws.com/2/core/latest/x86_64/mirror.list' }
end

describe yum.repo('amzn2-core-debuginfo') do
  it { should_not be_enabled }
  it { should exist }
  its('mirrors') { should cmp 'http://amazonlinux.default.amazonaws.com/2/core/latest/debuginfo/x86_64/mirror.list' }
end

describe yum.repo('amzn2-core-source') do
  it { should_not be_enabled }
  it { should exist }
  its('mirrors') { should cmp 'http://amazonlinux.default.amazonaws.com/2/core/latest/SRPMS/mirror.list' }
end

%w(
  amzn2-core
  amzn2-core-debuginfo
  amzn2-core-source
).each do |repo|
  describe ini("/etc/yum.repos.d/#{repo}.repo") do
    its("#{repo}.gpgcheck") { should cmp 1 }
    its("#{repo}.gpgkey") { should cmp 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2' }
  end
end
