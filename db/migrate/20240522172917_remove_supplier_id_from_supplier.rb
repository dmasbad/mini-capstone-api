class RemoveSupplierIdFromSupplier < ActiveRecord::Migration[7.1]
  def change
    remove_column :suppliers, :supplier_id, :string
  end
end
