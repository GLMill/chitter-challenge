require 'net/smtp'


module Email
    def send_message(user)
        message = <<-MESSAGE_END.gsub(/^\s+/,'')
        From: Chitter <us@chitter.com>
        To: #{user.username} <#{user.email}>
        MIME-Version: 1.0
        Content-type: text/html
        Subject: SMTP e-mail test
        <h1>hi #{user.name} You have been mentioned in chitter! </h1>
        MESSAGE_END

        return user.username
        # Net::SMTP.start('smtp.gmail.com', "25", 'localhost', "#{ENV['EMAIL_USER']}", "#{ENV['EMAIL_PASSWORD']}") do |smtp|
        #     smtp.send_message message, 'smtp.gmail.com', 'test@todomain.com'
        # end
    end
end