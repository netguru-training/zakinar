class RemoveProductsAndReviewsTables < ActiveRecord::Migration
  def up
    drop_table :products
    drop_table :reviews
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
