class Experience < ApplicationRecord

    has_many(:projects, dependent: :destroy)
  
    belongs_to :profile
  
    accepts_nested_attributes_for :projects , allow_destroy: true
  
  end