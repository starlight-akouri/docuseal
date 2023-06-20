# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  register_interceptor ActionMailerConfigsInterceptor

  def default_url_options
    Docuseal.default_url_options
  end
end
