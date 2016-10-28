describe Flare::Mail do

  context ".domain" do
    it "returns nil for nil email" do
      expect(Flare::Mail.domain(nil)).to be_nil
    end

    it "returns the domain for email addresses" do
      # TODO(mark): Use with_test_cases.
      expect(Flare::Mail.domain("mark@email.com")).to eq("email.com")
    end
  end

  context ".parsed" do
    it "returns nil for an invalid email" do
      expect(Flare::Mail.parsed("gibberish@@")).to be_nil
    end
  end

end
