require 'apir/endpoint'

module Apir
  describe Endpoint do
    before :each do
      args = {"name" => "events", "endpoint" => "/events", "method" => "GET"}
      @endpoint = Endpoint.new args
    end

    it "should initialize" do
      @endpoint.name.should == 'events'
      @endpoint.endpoint.should == '/events'
      @endpoint.method.should == 'GET'
    end

    it "should perform request when calling" do
      @endpoint.call
    end
  end
end
