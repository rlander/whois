# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.ve/property_expires_on_missing_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.ve.rb'

describe Whois::Answer::Parser::WhoisNicVe, "property_expires_on_missing.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.ve/property_expires_on_missing.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#expires_on" do
    it do
      @parser.expires_on.should == nil
    end
  end
end
