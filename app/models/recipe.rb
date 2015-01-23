class Recipe < ActiveRecord::Base

  serialize :recipe_instructions, Array 

  # has_many :recipe_category_lists
  # has_many :categories, through: :recipe_category_lists
  has_many :recipe_ingredient_lists
  has_many :ingredients, through: :recipe_ingredient_lists
  # belongs_to :user
  belongs_to :outside_profile
  # belongs_to :domain_name

  validates_uniqueness_of :recipe_url_code, scope: :domain_name_id
end