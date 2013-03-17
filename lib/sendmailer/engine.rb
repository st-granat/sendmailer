# coding: utf-8
module Sendmailer
  class Engine < ::Rails::Engine
    isolate_namespace Sendmailer
    initializer "sendmailer.config" do |app|
      app.config.action_mailer.delivery_method = :sendmail
      app.config.action_mailer.sendmail_settings = {
        :location => '/usr/sbin/exim4',
        :arguments => '-i'
      }
      app.config.action_mailer.perform_deliveries = true
      app.config.action_mailer.raise_delivery_errors = true
    end
  end
end
