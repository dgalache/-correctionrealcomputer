FactoryGirl.define do
  factory :ordem do
    equipamento "MyString"
defeito "MyText"
marca "MyString"
descricao "MyText"
status "MyString"
valor 1.5
cliente nil
empregado nil
  end

end
