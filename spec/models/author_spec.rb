RSpec.describe Author, "validations" do
    it { expect(Author.new).to validate_presence_of(:first_name) }
    it { expect(subject).to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:user_id) }
end