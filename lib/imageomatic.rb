require "imageomatic/version"
require "imageomatic/engine"

module Imageomatic
  autoload :Client,           "imageomatic/client"
  autoload :Configuration,    "imageomatic/configuration"
  autoload :UrlSignature,     "imageomatic/url_signature"

  class << self
    def client
      @client ||= Client.new
    end

    def configure(&block)
      block.call client.configuration
    end
  end
end
