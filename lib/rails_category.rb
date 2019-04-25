require "rails_category/engine"

module RailsCategory
  # Your code goes here...
  def self.app_root
    root = RailsCategory::Engine.root
    root.to_s
  end
end
