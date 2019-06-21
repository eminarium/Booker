RSpec.describe Review, "validations" do
    it { expect(Review.new).to validate_presence_of(:review_note) }
    it { expect(subject).to validate_presence_of(:book_id) }
    it { is_expected.to validate_presence_of(:user_id) }
end