module Apir
  class Endpoint
    attr_reader :name, :endpoint, :method

    def initialize args
      @name = args["name"]
      @endpoint = args["endpoint"]
      @method = args["method"]
    end
  end
end
