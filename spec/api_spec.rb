require 'apir/api'
require 'yaml'

module Apir
  describe Api do
    it "should create an api from a file" do
      api = Api.from_file './spec/data/github.yml'
      api.name.should == "Github"
      api.base_url.should == "http://api.github.com"
    end
  end
end
