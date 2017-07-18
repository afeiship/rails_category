require 'rails/generators/base'

module RailsCategory
  module Generators


    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../rails_category", __FILE__)

      argument :config_name, :type => :string, :default => "rails_category"
      class_option :test, :type => :boolean, :defalut => false

      def copy_migration
        template 'create_category_migration.rb', 'db/migrate/create_category_migration.rb'
      end

    end


  end
end

