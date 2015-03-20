# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'yum-amazon::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new }  
  
  it 'creates yum_repository[amzn-main]' do
    chef_run.node.set['cloud']['provider'] = 'ec2'
    chef_run.converge(described_recipe)
    expect(chef_run).to create_yum_repository('amzn-main')
  end
  it 'creates yum_repository[amzn-main-debuginfo]' do
    chef_run.node.set['cloud']['provider'] = 'ec2'
    chef_run.converge(described_recipe)
    expect(chef_run).to create_yum_repository('amzn-main-debuginfo')
  end
  it 'creates yum_repository[amzn-nosrc]' do
    chef_run.node.set['cloud']['provider'] = 'ec2'
    chef_run.converge(described_recipe)
    expect(chef_run).to create_yum_repository('amzn-nosrc')
  end
  it 'creates yum_repository[amzn-preview]' do
    chef_run.node.set['cloud']['provider'] = 'ec2'
    chef_run.converge(described_recipe)
    expect(chef_run).to create_yum_repository('amzn-preview')
  end
  it 'creates yum_repository[amzn-preview-debuginfo]' do
    chef_run.node.set['cloud']['provider'] = 'ec2'
    chef_run.converge(described_recipe)
    expect(chef_run).to create_yum_repository('amzn-preview-debuginfo')
  end
  it 'creates yum_repository[amzn-updates]' do
    chef_run.node.set['cloud']['provider'] = 'ec2'
    chef_run.converge(described_recipe)
    expect(chef_run).to create_yum_repository('amzn-updates')
  end
  it 'creates yum_repository[amzn-updates-debuginfo]' do
    chef_run.node.set['cloud']['provider'] = 'ec2'
    chef_run.converge(described_recipe)
    expect(chef_run).to create_yum_repository('amzn-updates-debuginfo')
  end
end