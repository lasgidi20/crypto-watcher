class DropJwtDenylist < ActiveRecord::Migration[7.0]
  def change
    def change
      drop_table :jwt_denylist
    end
  end
end
