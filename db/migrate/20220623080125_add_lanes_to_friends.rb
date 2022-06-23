class AddLanesToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :bad_at_top, :boolean, default: false
    add_column :friends, :bad_at_jg, :boolean, default: false
    add_column :friends, :bad_at_mid, :boolean, default: false
    add_column :friends, :bad_at_adc, :boolean, default: false
    add_column :friends, :bad_at_sup, :boolean, default: false
  end
end
