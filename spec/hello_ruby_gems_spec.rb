# frozen_string_literal: true

RSpec.describe HelloRubyGems do
  it "greets with a default name" do
    expect(HelloRubyGems.greet).to eq("Hello, world!")
  end
    
  it "greets with a custom name" do
    expect(HelloRubyGems.greet("michel")).to eq("Hello, michel!")
  end
end
