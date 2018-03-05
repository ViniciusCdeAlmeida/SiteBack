class MessageMailer < ApplicationMailer
    require 'mailgun'
    

    def contact(message)
    @body = message.body
    mg_client = Mailgun::Client.new ENV['https://api:key-9fe58fe05edc2b8127804db1b3797a75"\
        "@api.mailgun.net/v3/sandbox3e756d1080da42c599d84e9026e2a2c9.mailgun.org/messages']
    message_params = {:from => message.email,
                          :to => "<postmaster@sandbox3e756d1080da42c599d84e9026e2a2c9.mailgun.org>",
                          :subject => message.subject,
                          :text => message.text}
        mg_client.send_message ENV['sandbox3e756d1080da42c599d84e9026e2a2c9.mailgun.org'], message_params
    send
    end
end