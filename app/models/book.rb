class Book < ActiveRecord::Base
  belongs_to :category
  
  assignable_values_for :stauts do
    {
      0 => '未被借出',
      1 => '已被借出',
    }
  end
end
