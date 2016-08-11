class AddParamValueToParameters < ActiveRecord::Migration
  def change
    add_column :parameters, :param_value, :string
  end
end
