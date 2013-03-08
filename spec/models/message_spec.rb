require 'spec_helper'

describe Message do
  context "without content" do
    it { should_not be_valid }
  end
end
