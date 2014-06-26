require 'securerandom'

module Puppet::Parser::Functions
  newfunction(:mkpasswd, :type => :rvalue) do |args|
    SecureRandom.hex
  end
end
