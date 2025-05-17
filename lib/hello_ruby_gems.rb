# frozen_string_literal: true

require_relative "hello_ruby_gems/version"

module HelloRubyGems
  class Error < StandardError; end
  
  def self.greet(name = "world")
    "Hello, #{name}!"
  end
end
