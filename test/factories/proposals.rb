FactoryBot.define do
  factory :proposal do
    decision { "MyString" }
    loan_type { "MyString" }
    date { "2019-12-02" }
    amount { 1.5 }
  end
end
