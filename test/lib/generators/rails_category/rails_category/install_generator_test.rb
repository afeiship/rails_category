require 'test_helper'
require 'generators/rails_category/install/install_generator'

module RailsCategory
  class RailsCategory::InstallGeneratorTest < Rails::Generators::TestCase
    tests RailsCategory::InstallGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
