require "spec_helper"

RSpec.describe Bools do
  it "has a version number" do
    expect(Bools::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
