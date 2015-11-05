class SendEmailJob

  require 'mandrill'

  # At somepoint add this to a que/background job

  def self.perform(email_components)
    send_mandrill(email_components)
  end

  def self.send_mandrill(email_components)

    # Mandrill integration
    m = Mandrill::API.new ENV["MANDRILL_API_KEY"]

    template_name = "email-love" # Celebrate by Lucille Clifton

    # Add template content
    template_content = [{"content"=>"example content", "name"=>"example name"}]

    message = {
      "subject"=> 'A poem in your inbox',
      "from_name"=> 'Email Love',
      "merge_language"=>"mailchimp",
      "to"=>[
        {
         "email"=> @user.email
        }
      ],
      "html"=> ,
      "merge"=>true,
      "from_email"=>
    }

    result = ma.messages.send_template template_name, template_content, message

  end


end
