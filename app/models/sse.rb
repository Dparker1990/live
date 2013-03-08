class SSE
  attr_reader :io

  def initialize(io)
    @io = io
  end

  def write(message, options = {})
    io.write "event: #{options[:event]}\n"
    io.write "data: #{message}\n\n"
  end

  def close
    io.close
  end
end
