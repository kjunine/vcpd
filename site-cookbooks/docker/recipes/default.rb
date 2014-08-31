#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2014, Daniel Ku
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

apt_repository "lxc-docker" do
  uri "https://get.docker.io/ubuntu"
  distribution "docker"
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "36A1D7869245C8950F966E92D8576A8BA88D21E9"
end

package "lxc-docker" do
  action :upgrade
end

cookbook_file "/etc/default/docker" do
  mode 00644
  checksum "4f1371bfb99601f26a5bca3c4df2f1399f60e8d6fa24488cebf95de7b819e245"
  notifies :run, "execute[docker-restart]", :immediately
end

execute "docker-restart" do
  command "service docker restart"
  action :nothing
end
