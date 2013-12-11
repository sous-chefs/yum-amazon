require 'spec_helper'

describe 'yum-amazon::default' do
  context 'yum-amazon::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

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
        expect(chef_run).to create_yum_repository('amzn-main')
      end

      it "steps into yum_repository and creates template[/etc/yum.repos.d/#{repo}.repo]" do
        expect(chef_run).to render_file("/etc/yum.repos.d/#{repo}.repo")
      end
    end
  end
end
