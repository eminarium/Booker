RSpec.describe Book, "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:author_id) }
    it { is_expected.to validate_presence_of(:user_id) }        
end