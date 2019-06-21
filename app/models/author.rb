class Author < ApplicationRecord
    belongs_to :user
    has_many :books, dependent: :destroy

    validates_presence_of :first_name, :last_name, :user_id

    def first_and_last_name
        self.first_name[0]+". "+self.last_name
    end
end
