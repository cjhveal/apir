require 'apir/endpoint'

module Apir
  class Endpoint
    def call params=nil

    end
  end
  describe Endpoint do
    before :each do
      args = {"name" => "events", "endpoint" => "/events", "method" => "GET"}
      endpoint = Endpoint.new args
    end

    it "should initialize" do
      endpoint.name.should == 'events'
      endpoint.endpoint.should == '/events'
      endpoint.method.should == 'GET'
    end

    it "should call" do
      endpoint.call
    end
  end
end
