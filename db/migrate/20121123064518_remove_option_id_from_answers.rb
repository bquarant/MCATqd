class RemoveOptionIdFromAnswers < ActiveRecord::Migration
  def up
    remove_column :answers, :option_id
  end

  def down
    add_column :answers, :option_id, :integer
  end
end
