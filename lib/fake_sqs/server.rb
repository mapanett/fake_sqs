module FakeSQS
  class Server

    attr_reader :host, :port

    def initialize(options)
      @host = options.fetch(:host)
      @port = options.fetch(:port)
      @hostname = options.fetch(:port, nil)
    end

    def url_for(queue_id, options = {})
      host = options[:host] || @hostname || @host
      port = options[:port] || @port

      "http://#{host}:#{port}/#{queue_id}"
    end

  end
end
