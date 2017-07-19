require 'rails/generators/base'

module RailsCategory
  module Generators


    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path("../templates", __FILE__)

      argument :config_name, :type => :string, :default => "rails_category"
      class_option :test, :type => :boolean, :default => false


      desc "Copies migration to main project"
      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime "%Y%m%d%H%M%S"
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end

      def copy_migration
        migration_template 'create_categories.rb', "db/migrate/create_categories.rb"
      end

      def create_routes
        route "mount RailsCategory::Engine => '/'"
      end

    end


  end
end

