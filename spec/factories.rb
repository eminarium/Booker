FactoryGirl.define do
    #factory :book do
        #title "History of Ada"
        #description "Very good book"
    #end

    factory :user do
        email "merdan.durdiyev@gmail.com"
        password "testpassword"
        password_confirmation "testpassword"
    end

    factory :author do
        first_name "James"
        last_name "Arthur"
        about "Good author"
        user_id 1
        rating 3
    end
end