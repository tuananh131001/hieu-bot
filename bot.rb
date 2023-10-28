#!/usr/bin/env ruby

require 'discordrb'
require 'dotenv/load'
bot = Discordrb::Bot.new token: ENV['TOKEN']

bot.message(with_text: 'Sir') do |event|
  event.respond 'Con Cho Rach!'
end

bot.message do |event|
  if event.message.content.include?('sir')
    event.respond 'sir ma'
  end
  if event.message.content.include?('khô')
    event.respond 'khô con chó rách'

  end


   if event.message.content.include?('ước')
    event.respond 'ước cái loz què'

  end

end

bot.run
