source 'https://rubygems.org'

group :default do
  #default
  gem 'rails', '4.2.1'
  gem 'mysql2'
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'jquery-rails'
  gem 'turbolinks'
  gem 'jbuilder', '~> 2.0'
  # API
  gem 'grape'
  # 緯度経度
  gem 'geocoder'
  # 定数管理
  gem 'settingslogic'
  # htmlテンプレート
  gem 'slim-rails'
  # 緯度経度データ
  gem 'ruby-geometry', require: 'geometry'
  gem 'activerecord-mysql2spatial-adapter'
  # omniauth
  gem 'omniauth'
  gem 'omniauth-facebook'
  gem 'omniauth-twitter'
  # 独自認証
  # gem 'devise'
  gem  'sorcery'
  #Authorization
  gem 'cancancan'

  # json変換
  gem 'responders', '~> 2.0'
end

group :development do
  # エラー画面をわかりやすく整形してくれる
  gem 'better_errors'
  # better_errorsの画面上にirb/pry(PERL)を表示する
  gem 'binding_of_caller'
  gem 'pry-rails'
  # APIデバック用
  gem 'grape-swagger'
  gem 'grape-entity'
  # gem 'grape-swagger-ui'
  gem 'grape-swagger-rails'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
