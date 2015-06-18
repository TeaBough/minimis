%w( siret ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.css"]
end