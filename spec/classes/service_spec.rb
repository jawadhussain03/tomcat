require 'spec_helper'
describe 'tomcat::service' do
  it {should contain_class('tomcat::service')}
  it {is_expected.to contain_service('tomcat').with({
     :ensure => 'running',
     :enable => 'true',
     })
  } 
end
