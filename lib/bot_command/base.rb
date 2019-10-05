require 'telegram/bot'

module BotCommand
  class Base
    attr_reader :user, :message, :api

    def initialize(message)

      @message = message
      token = Rails.application.secrets.secret_key_base
      @api = ::Telegram::Bot::Api.new(token)
    end


    protected

    def send_message(text)
      @api.call('sendMessage', chat_id: "977240518", text: text)
    end


  end
end
