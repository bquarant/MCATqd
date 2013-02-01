class RemoveSubcategoryFromQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :sub_category
  end

  def down
    add_column :questions, :sub_category, :string
  end
end
