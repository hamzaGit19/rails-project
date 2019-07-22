class Blog < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
  after_create :send_a_save_msg
  after_update :send_a_update_msg

  def send_a_save_msg
    puts "!--------------New blog created!--------------"
  end

  def send_a_update_msg
    puts "------------Blog has been updated!--------------"
  end
  # validates_with UserValidator

  # class UserValidator < ActiveModel::Validator
  #     def validate(record)
  #       id = record.id
  #       if record.first_name == "Evil"
  #         record.errors[:base] << "This person is evil"
  #       end
  #     end
  #   end


end
