require "spec_helper"

describe Language do

  context "constants" do
    it { should have_constant(:LANGUAGE) }
  end

  context "::LANGUAGE" do
    it "should be 12" do
      Language::LANGUAGE.count.should == 138
    end
  end

  context "::REGION_DATA" do
    let(:countries) { Language::YML_LANGUAGE.map { |_, v| v}.flatten.sort }

    it "provinces should be consistent with PROVINCES" do
      countries.should == Language::LANGUAGE
    end
  end
end
