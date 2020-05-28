require_relative '../lib/error_checks'

RSpec.describe Checks do
  describe "#check_tags(file)" do
    it "returns string " do
      expect(check_tags(["<titlemint.com/sign_up</title>"])).to eql("fix tags at line #{0 + 1} ")
    end
  end
  describe "#check_apostrophe(file)" do
    it "returns string " do
      expect(check_apostrophe([]).class == String).to eql(true)
    end
  end
end
