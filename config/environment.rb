# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
BlueDoorCafe::Application.initialize!

ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'smtp.sendgrid.net',
    :port           => '25',
    :authentication => :plain,
    :user_name      => 'app3133271@heroku.com',
    :password       => 'ducktape',
    :domain         => 'bluedoorcafe.org'
}