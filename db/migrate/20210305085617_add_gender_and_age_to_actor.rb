class AddGenderAndAgeToActor < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :gender, :string
    add_column :actors, :age, :integer
  end
end
