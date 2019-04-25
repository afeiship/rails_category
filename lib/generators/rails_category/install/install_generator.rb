class RailsCategory::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)
  class_option :full, :type => :boolean
  desc "Configure necessary files to use RailsCategory"

  def copy_views
    root = RailsCategory.app_root
    directory "#{root}/app/views", "app/views"
  end

  def generate_model
    rake "rails_category:install:migrations"
  end

  def add_gems
    gsub_file "Gemfile", "https://rubygems.org", "https://gems.ruby-china.com"
  end

  def create_routes
    unless options[:full]
      route 'mount RailsCategory::Engine => "/rails_category"'
    end
  end
end
