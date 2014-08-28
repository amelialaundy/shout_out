require_relative '../spec_helper'

describe User do

  describe "validate" do
    before do
      @user=User.create(handle: "Bobthefly", password: "buzzy")
    end
    it "returns a user object if user_name and password are vaild" do
      results = User.validate(@user.handle, @user.password)
      expect(results).to be_a(User)
    end
    it "returns nil if User is invalid" do
      results = User.validate("not vaild", @user.password)
      expect(results).to be_nil
    end
    it "returns nil is password is incorrect" do
      results = User.validate(@user.handle, "password")
      expect(results).to be_nil
    end
  end
end
