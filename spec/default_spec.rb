require 'spec_helper'

describe 'yum-amazon::default' do
  context 'yum-amazon::default uses default attributes' do
    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set['yum']['amzn-main']['managed'] = true
        node.set['yum']['amzn-main-debuginfo']['managed'] = true
        node.set['yum']['amzn-nosrc']['managed'] = true
        node.set['yum']['amzn-preview']['managed'] = true
        node.set['yum']['amzn-preview-debuginfo']['managed'] = true
        node.set['yum']['amzn-updates']['managed'] = true
        node.set['yum']['amzn-updates-debuginfo']['managed'] = true
      end.converge(described_recipe)
    end

    %w{
      amzn-main
      amzn-main-debuginfo
      amzn-nosrc
      amzn-preview
      amzn-preview-debuginfo
      amzn-updates
      amzn-updates-debuginfo
    }.each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end
end
