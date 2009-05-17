require 'rack/request'
require 'rack/response'

module Rack
  class App
    def call(env)
      req = Request.new(env)

      Response.new.finish do |res|
        res.write("<html><body>")
        res.write req.fullpath
        res.write("</body></html>")
      end
    end
  end
end

run  Rack::App.new