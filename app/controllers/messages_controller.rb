require 'sse'

class MessagesController < ApplicationController
  include ActionController::Live
  expose(:message, attributes: :message_params)

  def notify
    response.headers['Content-Type'] = 'text/event-stream'

    sse = SSE.new(response.stream)

    loop do
      message.on_new_message do |msg|
        begin
          sse.write msg, event: "messages"
        rescue
          sse.close
        end
      end
    end
  end

  def create
    if message.save
      render :json => { result: 'success', message: message }
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
