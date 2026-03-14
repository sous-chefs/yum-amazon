# frozen_string_literal: true

yum_amazon_repo 'amazonlinux'

yum_amazon_repo 'amazonlinux-debuginfo' do
  description 'Amazon Linux 2023 repository - Debug'
  mirrorlist 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/debuginfo/$basearch/mirror.list'
  enabled false
end

yum_amazon_repo 'amazonlinux-source' do
  description 'Amazon Linux 2023 repository - Source packages'
  mirrorlist 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/SRPMS/mirror.list'
  enabled false
end
