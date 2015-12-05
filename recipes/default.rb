#
# Cookbook Name:: jenkins-docker-cookbook
# Recipe:: default
#
# Copyright (C) 2015 Sungho Park
#
# All rights reserved - Do Not Redistribute
#

#Install docker
docker_installation 'default' do
  action :create
end

# Pull latest image
docker_image 'jenkins' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[jenkins_container]'
end

# Run container exposing ports
docker_container 'jenkins_container' do
  repo 'jenkins'
  tag 'latest'
  port ['8080:8080','50000:50000']
  host_name 'jenkins'
end

