# Encoding: utf-8

require 'spec_helper'

describe 'yum-amazon::default' do
  context 'yum-amazon::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

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

    it 'steps into yum_repository and creates template[/etc/yum.repos.d/amzn-main.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/amzn-main.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/amzn-main-debuginfo.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/amzn-main-debuginfo.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/amzn-nosrc.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/amzn-nosrc.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/amzn-preview.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/amzn-preview.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/amzn-preview-debuginfo.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/amzn-preview-debuginfo.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/amzn-updates.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/amzn-updates.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/amzn-updates-debuginfo.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/amzn-updates-debuginfo.repo')
    end

  end
end
