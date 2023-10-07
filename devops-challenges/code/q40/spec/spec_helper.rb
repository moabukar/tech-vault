require 'rspec-puppet'

RSpec.configure do |c|
    c.module_path = '/etc/puppet/modules'
    c.manifest_dir = '/etc/puppet/manifests'
end
