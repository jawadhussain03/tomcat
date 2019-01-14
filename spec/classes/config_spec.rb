require 'spec_helper'
  describe 'tomcat::config' do
     it {should contain_class('tomcat::config')}
	 it {is_expected.to compile}
	 it {is_expected.to contain_file('/etc/tomcat/tomcat.conf').with({
	       :mode   =>   '0644',
		   :owner  =>   'tomcat',
		   :group  =>   'tomcat',
		   }).that_notifies('Service[tomcat]')
		}
  end		
