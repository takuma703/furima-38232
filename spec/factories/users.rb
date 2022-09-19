FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { 'test@example' }
    password              { '123abc' }
    password_confirmation { '123abc' }
    first_name            { '太郎' }
    family_name           { '降真' }
    first_name_kana       { 'タロウ' }
    family_name_kana      { 'フリマ' }
    birthday              { '2000-10-10' }
  end
end
