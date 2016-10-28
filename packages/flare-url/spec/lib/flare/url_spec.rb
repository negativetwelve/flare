describe Flare::Url do

  context ".host" do
    it "returns nil for nil url" do
      expect(Flare::Url.host(nil)).to be_nil
    end

    it "returns nil for email addresses" do
      # TODO(mark): Use with_test_cases.
      expect(Flare::Url.host("mark@email.com")).to be_nil
    end
  end

  context ".parsed" do
    it "returns nil for invalid urls" do
      # TODO(mark): Use with_test_cases.
      expect(Flare::Url.parsed(nil)).to be_nil
    end
  end

  context ".scheme" do
    it "returns nil for nil url" do
      expect(Flare::Url.scheme(nil)).to be_nil
    end
  end

end
