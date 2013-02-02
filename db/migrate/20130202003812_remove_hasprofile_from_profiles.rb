class RemoveHasprofileFromProfiles < ActiveRecord::Migration
  def up
    remove_column :profiles, :has_profile
  end

  def down
    add_column :profiles, :has_profile, :integer
  end
end
