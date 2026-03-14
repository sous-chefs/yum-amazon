# frozen_string_literal: true

require 'spec_helper'

describe 'yum_amazon_repo' do
  step_into :yum_amazon_repo
  platform 'amazon', '2023'

  context 'create action with default properties' do
    recipe do
      yum_amazon_repo 'amazonlinux'
    end

    it { is_expected.to create_yum_repository('amazonlinux') }

    it {
      is_expected.to create_yum_repository('amazonlinux').with(
        description: 'Amazon Linux 2023 repository',
        mirrorlist: 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/$basearch/mirror.list',
        gpgcheck: true,
        gpgkey: 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023',
        enabled: true
      )
    }
  end

  context 'create action with custom properties' do
    recipe do
      yum_amazon_repo 'amazonlinux' do
        description 'Custom repo'
        mirrorlist nil
        baseurl 'https://internal.example.com/amazonlinux/2023/$basearch'
        enabled false
        gpgcheck false
      end
    end

    it {
      is_expected.to create_yum_repository('amazonlinux').with(
        description: 'Custom repo',
        baseurl: 'https://internal.example.com/amazonlinux/2023/$basearch',
        enabled: false,
        gpgcheck: false
      )
    }
  end

  context 'delete action' do
    recipe do
      yum_amazon_repo 'amazonlinux' do
        action :delete
      end
    end

    it { is_expected.to remove_yum_repository('amazonlinux') }
  end
end
