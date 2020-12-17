class AddHotelToFnrh < ActiveRecord::Migration[6.0]
  def change
    add_column :fnrhs, :hotel, :string
  end
end
