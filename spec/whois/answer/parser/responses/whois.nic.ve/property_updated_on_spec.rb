# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.ve/property_updated_on_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.ve.rb'

describe Whois::Answer::Parser::WhoisNicVe, "property_updated_on.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.ve/property_updated_on.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2005-11-17 21:16:31")
    end
  end
end
