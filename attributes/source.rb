#
# Cookbook Name:: haproxy-ng
# Attribute:: source
#
# Copyright 2015 Nathan Williams
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

default['haproxy']['source'].tap do |haproxy|
  source['version'] = '1.5.10'

  source['base_url'] = 'http://www.haproxy.org/download'

  source['package_url'] = [
    "#{source['source_base_url']}",
    "#{source['version'].split('.')[0,1].join('.')}",
    "src",
    "#{source['version']}.tar.gz"
  ].join('/')
end