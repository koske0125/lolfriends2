class FixDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :friends, :active_time, from: "f", to: ""
  end
end
