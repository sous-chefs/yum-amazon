# frozen_string_literal: true

provides :yum_amazon_repo
unified_mode true

property :repo_name, String, name_property: true
property :baseurl, String
property :cost, String
property :description, String, default: 'Amazon Linux 2023 repository'
property :enabled, [true, false], default: true
property :enablegroups, [true, false]
property :exclude, String
property :failovermethod, String
property :gpgcheck, [true, false], default: true
property :gpgkey, String, default: 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023'
property :http_caching, String
property :include_config, String
property :includepkgs, String
property :keepalive, [true, false]
property :max_retries, String
property :metadata_expire, String
property :mirror_expire, String
property :mirrorlist, String, default: 'https://cdn.amazonlinux.com/al2023/core/mirrors/$releasever/$basearch/mirror.list'
property :priority, String
property :proxy, String
property :proxy_username, String
property :proxy_password, String
property :repositoryid, String
property :sslcacert, String
property :sslclientcert, String
property :sslclientkey, String
property :sslverify, [true, false]
property :timeout, String

action :create do
  yum_repository new_resource.repo_name do
    baseurl new_resource.baseurl if new_resource.baseurl
    cost new_resource.cost if new_resource.cost
    description new_resource.description
    enabled new_resource.enabled
    enablegroups new_resource.enablegroups unless new_resource.enablegroups.nil?
    exclude new_resource.exclude if new_resource.exclude
    failovermethod new_resource.failovermethod if new_resource.failovermethod
    gpgcheck new_resource.gpgcheck
    gpgkey new_resource.gpgkey
    http_caching new_resource.http_caching if new_resource.http_caching
    include_config new_resource.include_config if new_resource.include_config
    includepkgs new_resource.includepkgs if new_resource.includepkgs
    keepalive new_resource.keepalive unless new_resource.keepalive.nil?
    max_retries new_resource.max_retries if new_resource.max_retries
    metadata_expire new_resource.metadata_expire if new_resource.metadata_expire
    mirror_expire new_resource.mirror_expire if new_resource.mirror_expire
    mirrorlist new_resource.mirrorlist if new_resource.mirrorlist
    priority new_resource.priority if new_resource.priority
    proxy new_resource.proxy if new_resource.proxy
    proxy_username new_resource.proxy_username if new_resource.proxy_username
    proxy_password new_resource.proxy_password if new_resource.proxy_password
    repositoryid new_resource.repositoryid if new_resource.repositoryid
    sslcacert new_resource.sslcacert if new_resource.sslcacert
    sslclientcert new_resource.sslclientcert if new_resource.sslclientcert
    sslclientkey new_resource.sslclientkey if new_resource.sslclientkey
    sslverify new_resource.sslverify unless new_resource.sslverify.nil?
    timeout new_resource.timeout if new_resource.timeout
    action :create
  end
end

action :delete do
  yum_repository new_resource.repo_name do
    action :remove
  end
end
