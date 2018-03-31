# config/initializers/omniauth.rb

OmniAuth.config.logger = Rails.logger
#
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, ENV['620815730254-t4hdhti0grnhmiefu43sbioa1pdsnvml.apps.googleusercontent.comD'], ENV['nTT5NKCQvfwoi4b4gFgR0IBE'], {
#     scope: ['https://mail.google.com/','contacts','plus.login','plus.me','userinfo.email','userinfo.profile']
#   }
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '116762353372-e5eqaqousip5c8dbfj3eh715pavs5jjf.apps.googleusercontent.com', 'KCnOkGR2AdH2j8KziYudlgBA', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end


#user = User.fromomniauth(env["omniauth.auth"])
