Ckeditor.setup do |config|
  config.assets_languages = Rails.application.config.i18n.available_locales.map{|l| l.to_s.downcase}
<<<<<<< HEAD
  config.assets_plugins = []
=======
  config.assets_plugins = %w[copyformatting tableselection scayt wsc]
>>>>>>> v0.16
end
