OmniAuth.config.logger = Rails.logger


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['476686205719531'], ENV['a4fb0686c833797e3a59bb6e3ffe25f2']
end