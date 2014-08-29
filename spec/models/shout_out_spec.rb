require_relative '../spec_helper'

describe ShoutOut do

  describe "validate" do
    before do
      @shout_out=ShoutOut.create(content: "If you were a wink, I'd be a nod")
    end
    it "returns a shout out object if shout_out_content is vaild" do
      results = ShoutOut.validate(@shout_out.content)
      expect(results).to be_a(ShoutOut)
    end
    it "returns nil if User is invalid" do
      results = ShoutOut.validate("not vaild", @user.password)
      expect(results).to be_nil
    end
    it "returns nil is password is incorrect" do
      results = ShoutOut.validate(@shout_out.handle, "password")
      expect(results).to be_nil
    end
  end
end