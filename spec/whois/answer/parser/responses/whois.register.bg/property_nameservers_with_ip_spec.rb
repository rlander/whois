# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.register.bg/property_nameservers_with_ip_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.register.bg.rb'

describe Whois::Answer::Parser::WhoisRegisterBg, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.register.bg/property_nameservers_with_ip.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "chicken.orbitel.bg"
      @parser.nameservers[0].ipv4.should == "195.24.32.5"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns.orbitel.bg"
      @parser.nameservers[1].ipv4.should == "195.24.32.2"
    end
  end
end
