require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "DB Table" do
    it { is_expected.to have_db_column :body }
  end

  describe "validations" do
    it {is_expected.to validate_presence_of :body }
  end

  describe "factory" do
    it  " is expected to have a valid factory" do
      expect(create(:comment)).to be_valid
    end
  end
end
