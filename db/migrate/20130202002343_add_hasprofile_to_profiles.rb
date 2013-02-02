class AddHasprofileToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :has_profile, :integer
  end
end
