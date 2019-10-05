
class BotMessageDispatcher
  attr_reader :message

  def initialize(message)
    @message = message

  end

  def process
    @texted = @message[:message][:text]
    t= @texted
    if t == "start"
      BotCommand::Start.new(message).start
    end
    if !@message.nil? && @texted.split.first.downcase == "name"

      $k = @texted
      BotCommand::Born.new(message).starto

    end
    if !@message.nil? && @texted.split.first.downcase == "in"
      user=User.new
      user.first_name = $k
      user.save
      user.recipe = @texted
      user.save
      pp @texted
      pp $k
      BotCommand::WriteBlog.new(message).kstart
      end

  end

end