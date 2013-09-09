# Cookbook Name:: wlp
# Attributes:: default
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

#<> User name under which the server will be installed and running.
default[:wlp][:user] = "wlp"

#<> Group name under which the server will be installed and running.
default[:wlp][:group] = "wlp-admin"

#<> Base installation directory.
default[:wlp][:base_dir] = "/opt/was/liberty"

#<> Set user configuration directory (wlp.user.dir). Set to 'nil' to use default location.
default[:wlp][:user_dir] = nil

#<> Installation method. Set it to 'archive' or 'zip'.
default[:wlp][:install_method] = 'archive'

#<
# Base URL location for downloading the runtime, extended, and extras Liberty profile archives. 
# By default the archives are downloaded from WASdev repository.
#>
default[:wlp][:archive][:base_url] = "http://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/8.5.5.0/"

#<> URL location of the runtime archive.
default[:wlp][:archive][:runtime][:url] = "#{node[:wlp][:archive][:base_url]}/wlp-developers-runtime-8.5.5.0.jar"

#<> Checksum value for the runtime archive.
default[:wlp][:archive][:runtime][:checksum] = '4032747299111a580a9ef476d539fb0f67bf6c98894e01db4555d94d35bb5175'

#<> URL location of the extended archive.
default[:wlp][:archive][:extended][:url] = "#{node[:wlp][:archive][:base_url]}/wlp-developers-extended-8.5.5.0.jar"

#<> Checksum value for the extended archive.
default[:wlp][:archive][:extended][:checksum] = 'b3df906bd7ddeafa58121c96577ac08054208f16cb874a8684b6b132267e23a0'

#<> Controls whether the extended archive should be downloaded and installed.
default[:wlp][:archive][:extended][:install] = true

#<> URL location of the extras archive.
default[:wlp][:archive][:extras][:url] = "#{node[:wlp][:archive][:base_url]}/wlp-developers-extras-8.5.5.0.jar"

#<> Checksum value for the extras archive.
default[:wlp][:archive][:extras][:checksum] = '7ff244a92260f032ad67733070df7f581a1a97628e01aebde808148b981396d3'

#<> Controls whether the extras archive should be downloaded and installed.
default[:wlp][:archive][:extras][:install] = false

#<> Base installation directory of the extras archive. 
default[:wlp][:archive][:extras][:base_dir] = "#{node[:wlp][:base_dir]}/extras"

#<
# Accept license terms when doing archive-based installation. 
# Must be set to `true` otherwise installation will fail. 
#>
default[:wlp][:archive][:accept_license] = false

#<
# URL location to a zip file containing Liberty profile installation files. Must be set 
# only when `node[:wlp][:install_method]` is set to `zip`.
#>
default[:wlp][:zip][:url] = nil

