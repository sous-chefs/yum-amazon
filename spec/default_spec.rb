# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'yum-amazon::default' do
  context 'amazon' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.automatic['platform'] = 'amazon'
        node.automatic['platform_version'] = '2014.09'
      end.converge(described_recipe)
    end

    it 'creates yum_repository[amzn-main]' do
      expect(chef_run).to create_yum_repository('amzn-main')
    end
    it 'creates yum_repository[amzn-main-debuginfo]' do
      expect(chef_run).to create_yum_repository('amzn-main-debuginfo')
    end
    it 'creates yum_repository[amzn-nosrc]' do
      expect(chef_run).to create_yum_repository('amzn-nosrc')
    end
    it 'creates yum_repository[amzn-preview]' do
      expect(chef_run).to create_yum_repository('amzn-preview')
    end
    it 'creates yum_repository[amzn-preview-debuginfo]' do
      expect(chef_run).to create_yum_repository('amzn-preview-debuginfo')
    end
    it 'creates yum_repository[amzn-updates]' do
      expect(chef_run).to create_yum_repository('amzn-updates')
    end
    it 'creates yum_repository[amzn-updates-debuginfo]' do
      expect(chef_run).to create_yum_repository('amzn-updates-debuginfo')
    end
  end

  context 'centos' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

    it 'creates yum_repository[amzn-main]' do
      expect(chef_run).to_not create_yum_repository('amzn-main')
    end
    it 'creates yum_repository[amzn-main-debuginfo]' do
      expect(chef_run).to_not create_yum_repository('amzn-main-debuginfo')
    end
    it 'creates yum_repository[amzn-nosrc]' do
      expect(chef_run).to_not create_yum_repository('amzn-nosrc')
    end
    it 'creates yum_repository[amzn-preview]' do
      expect(chef_run).to_not create_yum_repository('amzn-preview')
    end
    it 'creates yum_repository[amzn-preview-debuginfo]' do
      expect(chef_run).to_not create_yum_repository('amzn-preview-debuginfo')
    end
    it 'creates yum_repository[amzn-updates]' do
      expect(chef_run).to_not create_yum_repository('amzn-updates')
    end
    it 'creates yum_repository[amzn-updates-debuginfo]' do
      expect(chef_run).to_not create_yum_repository('amzn-updates-debuginfo')
    end
  end
end
