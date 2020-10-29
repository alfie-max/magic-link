module Magic::Link
  class MagicLinkMailer < ApplicationMailer
    def send_magic_link(email, token, otp)
      @email = email
      @token = token
      @otp = otp
      mail(to: email, subject: I18n.t('magic_links.mailer.magic_link.subject'))
    end
  end
end
