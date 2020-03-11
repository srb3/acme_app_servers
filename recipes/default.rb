#
# Cookbook:: acme_app_servers
# Recipe:: default
#
# Copyright:: 2020, Steve Brown
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
if platform?('windows')
  include_recipe 'acme_windows_app::app'
else
  include_recipe 'acme_linux_app::default'
end
ohai_plugin 'acme_packages'
