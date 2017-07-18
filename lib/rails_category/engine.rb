require 'rails'

module RailsCategory
  class Engine < Rails::Engine
    initializer 'RailsCategory precompile hook', group: :all do |app|
      app.config.assets.precompile += %w(
        rails_category/rails_category.css
      )
    end
  end
end
