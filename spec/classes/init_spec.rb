require 'spec_helper'
describe 'tomcat' do
  context "with default values for all parameters" do
    it {should contain_class('tomcat')}
  end
  it {should contain_class('java')}
  it {should contain_class('tomcat::install')}
  it {should contain_class('tomcat::config')}
  it {should contain_class('tomcat::service')}
end
