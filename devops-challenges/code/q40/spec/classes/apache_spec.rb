require 'spec_helper'

describe 'apache', :type => :class do
    it { should contain_package('httpd').with_ensure('present') }
    it { should contain_service('httpd').with({
        'ensure' => 'running',
        'enable' => 'true',
        })
    }
end
