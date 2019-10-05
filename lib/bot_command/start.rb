module BotCommand
  class Start < Base

    def start
      send_message("Hello! Enter your name")
    end
  end
end
