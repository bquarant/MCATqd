class AddExplanationToOptions < ActiveRecord::Migration
  def change
    add_column :options, :explanation, :string
  end
end
