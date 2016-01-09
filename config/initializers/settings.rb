APP_CONFIG = HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../../app.yml', __FILE__))))[Rails.env]
