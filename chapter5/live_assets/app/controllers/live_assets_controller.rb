class LiveAssetsController < ActionController::Base
  include ActionController::Live

  def hello
    100.times {
      response.stream.write "hello world\n"
      sleep 1
    }
  ensure
    response.stream.close
  end

  def sse
    response.headers["Cache-Control"] = "no-cache"
    response.headers["Content-Type"] = "text/event-stream"

    100.times {
      response.stream.write "event: reloadCSS\ndata: {}\n\n"
      sleep 1
    }
  ensure
    response.stream.close
  end
end
