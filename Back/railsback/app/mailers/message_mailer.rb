class MessageMailer < ActionMailer::Base    
    
    require 'mailgun'
    
    def contact(message)
    @message = message
    mg_client = Mailgun::Client.new ENV['api_key']
    message_params = {:from    => @message.email,
                      :to      => ENV['gmail_username'],
                      :subject => @message.subject,
                      :text    => @message.text,}
    mg_client.send_message ENV['domain'], message_params
    end
end