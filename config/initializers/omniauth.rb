OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '300382253716230', '9947d84864e550f39fee9b506f1760b5'
end