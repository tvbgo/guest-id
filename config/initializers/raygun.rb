Raygun.setup do |config|
  config.api_key = "cNpNMxMY121ykgC9W5lJ8w"
  config.filter_parameters = Rails.application.config.filter_parameters

  # The default is Rails.env.production?
  # config.enable_reporting = !Rails.env.development? && !Rails.env.test?
end
