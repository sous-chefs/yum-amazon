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
