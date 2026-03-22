# frozen_string_literal: true

title 'Amazon Linux 2023 Repository Tests'

control 'yum-amazon-repo-01' do
  impact 1.0
  title 'amazonlinux repository exists'
  desc 'The amazonlinux repository should exist'

  describe yum.repo('amazonlinux') do
    it { should exist }
  end
end

control 'yum-amazon-repo-02' do
  impact 0.5
  title 'amazonlinux-debuginfo repository exists'
  desc 'The amazonlinux-debuginfo repository should exist but be disabled'

  describe yum.repo('amazonlinux-debuginfo') do
    it { should exist }
    it { should_not be_enabled }
  end
end

control 'yum-amazon-repo-03' do
  impact 0.5
  title 'amazonlinux-source repository exists'
  desc 'The amazonlinux-source repository should exist but be disabled'

  describe yum.repo('amazonlinux-source') do
    it { should exist }
    it { should_not be_enabled }
  end
end
