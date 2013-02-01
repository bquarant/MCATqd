class AddSubcategoryIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :subcategory_id, :integer
  end
end
