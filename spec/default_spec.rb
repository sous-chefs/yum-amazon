require 'spec_helper'

describe 'yum-amazon::default' do
  context 'amazon' do
    cached(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
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
    cached(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

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
