require 'spec_helper'
require 'puppetlabs_spec_helper/module_spec_helper'

describe 'mkpasswd', :type => :puppet_function do
  it 'should exist' do
    Puppet::Parser::Functions.function(:mkpasswd).should == 'function_mkpasswd'
  end

  it 'should be 32 characters' do
    password = subject.call([])
    password.length.should be == 32
  end
end
