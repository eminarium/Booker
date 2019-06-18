class Author < ApplicationRecord
    belongs_to :user
    has_many :books, dependent: :destroy

    def first_and_last_name
        self.first_name[0]+". "+self.last_name
    end
end
