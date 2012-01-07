# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/tf/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.fr.rb'

describe Whois::Record::Parser::WhoisNicFr, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.fr/tf/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2004-10-26")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2004-10-29")
    end
  end
  describe "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "AAEA9-FRNIC"
      @parser.registrant_contacts[0].name.should          == nil
      @parser.registrant_contacts[0].organization.should  == "Afnic (Terres Australes et Antarctiques - TOM)"
      @parser.registrant_contacts[0].address.should       == "immeuble international\n2, rue Stephenson\nMontigny-Le-Bretonneux\n78181 Saint Quentin en Yvelines Cedex"
      @parser.registrant_contacts[0].city.should          == nil
      @parser.registrant_contacts[0].zip.should           == nil
      @parser.registrant_contacts[0].state.should         == nil
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == "FR"
      @parser.registrant_contacts[0].phone.should         == nil
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == nil
      @parser.registrant_contacts[0].updated_on.should    == Time.parse("2008-10-09 00:00:00 UTC")
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == "NFC1-FRNIC"
      @parser.admin_contacts[0].name.should          == "NIC France Contact"
      @parser.admin_contacts[0].organization.should  == "AFNIC"
      @parser.admin_contacts[0].address.should       == "immeuble international\n2, rue Stephenson\nMontigny le Bretonneux\n78181 Saint Quentin en Yvelines Cedex"
      @parser.admin_contacts[0].city.should          == nil
      @parser.admin_contacts[0].zip.should           == nil
      @parser.admin_contacts[0].state.should         == nil
      @parser.admin_contacts[0].country.should       == nil
      @parser.admin_contacts[0].country_code.should  == "FR"
      @parser.admin_contacts[0].phone.should         == "+33 1 39 30 83 00"
      @parser.admin_contacts[0].fax.should           == nil
      @parser.admin_contacts[0].email.should         == "hostmaster@nic.fr"
      @parser.admin_contacts[0].updated_on.should    == Time.parse("2005-08-23 00:00:00 UTC")
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == "NFC1-FRNIC"
      @parser.technical_contacts[0].name.should          == "NIC France Contact"
      @parser.technical_contacts[0].organization.should  == "AFNIC"
      @parser.technical_contacts[0].address.should       == "immeuble international\n2, rue Stephenson\nMontigny le Bretonneux\n78181 Saint Quentin en Yvelines Cedex"
      @parser.technical_contacts[0].city.should          == nil
      @parser.technical_contacts[0].zip.should           == nil
      @parser.technical_contacts[0].state.should         == nil
      @parser.technical_contacts[0].country.should       == nil
      @parser.technical_contacts[0].country_code.should  == "FR"
      @parser.technical_contacts[0].phone.should         == "+33 1 39 30 83 00"
      @parser.technical_contacts[0].fax.should           == nil
      @parser.technical_contacts[0].email.should         == "hostmaster@nic.fr"
      @parser.technical_contacts[0].updated_on.should    == Time.parse("2005-08-23 00:00:00 UTC")
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.nic.fr"
      @parser.nameservers[0].ipv4.should == "192.134.4.1"
      @parser.nameservers[0].ipv6.should == "2001:660:3003:2::4:1"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns2.nic.fr"
      @parser.nameservers[1].ipv4.should == "192.93.0.4"
      @parser.nameservers[1].ipv6.should == "2001:660:3005:1::1:2"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns3.nic.fr"
      @parser.nameservers[2].ipv4.should == "192.134.0.49"
      @parser.nameservers[2].ipv6.should == "2001:660:3006:1::1:1"
    end
  end
end
