# frozen_string_literal: true

require 'spec_helper'

describe 'yum-amazon::default' do
  context 'amazonlinux-2023' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'amazon', version: '2023') do |node|
        node.normal['yum']['amazonlinux'] = { 'description' => 'Amazon Linux 2023 repository', 'enabled' => true, 'gpgcheck' => true }
        node.normal['yum']['amazonlinux-debuginfo'] = { 'description' => 'Amazon Linux 2023 repository - Debug', 'enabled' => false }
        node.normal['yum']['amazonlinux-source'] = { 'description' => 'Amazon Linux 2023 repository - Source packages', 'enabled' => false }
      end.converge(described_recipe)
    end

    it 'creates yum_repository[amazonlinux]' do
      expect(chef_run).to create_yum_repository('amazonlinux')
    end

    it 'creates yum_repository[amazonlinux-debuginfo]' do
      expect(chef_run).to create_yum_repository('amazonlinux-debuginfo')
    end

    it 'creates yum_repository[amazonlinux-source]' do
      expect(chef_run).to create_yum_repository('amazonlinux-source')
    end
  end

  context 'centos' do
    cached(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7').converge(described_recipe) }

    it 'does not create yum_repository[amazonlinux]' do
      expect(chef_run).to_not create_yum_repository('amazonlinux')
    end

    it 'does not create yum_repository[amazonlinux-debuginfo]' do
      expect(chef_run).to_not create_yum_repository('amazonlinux-debuginfo')
    end

    it 'does not create yum_repository[amazonlinux-source]' do
      expect(chef_run).to_not create_yum_repository('amazonlinux-source')
    end
  end
end
