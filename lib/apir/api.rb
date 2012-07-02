# require 'apir/endpoint'
module Apir
  require 'yaml'
  class Api
    attr_reader :name, :base_url
    def initialize args
      @name = args["name"]
      @base_url = args["base_url"]

      @endpoints = []
      args["endpoints"].each do |endpoint|
        @endpoints.push Endpoint.new endpoint
      end
    end

    def self.from_file filename
      File.open(filename) do |stream|
        return Api.new YAML::load stream
      end
    end
  end
end
