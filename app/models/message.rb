class Message < ActiveRecord::Base
  validates :content, presence: true

  after_save :notify_message_passed

  attr_accessor :content

  def notify_message_passed
    notify
  end

  def on_new_message
    listen

    loop do
      connection.raw_connection.wait_for_notify do |event, pid, message|
        yield message
      end
    end
  ensure
    connection.execute "UNLISTEN #{channel}"
  end

  private

  def notify
    connection.execute "NOTIFY #{channel}, #{connection.quote content}"
  end

  def listen
    connection.execute "LISTEN #{channel}"
  end

  def channel
    "messages"
  end
end
