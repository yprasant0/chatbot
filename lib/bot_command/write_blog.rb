module BotCommand
  class WriteBlog < Base
    def should_start?
      text =~ /\A\/write_blog/
    end

    def start
      send_message('Hmm, looks cool! Seems like you really know Rails! A real rockstar!')
      user.reset_next_bot_command
    end
  end
end