class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ポイントカード' },
    { id: 3, name: 'クーポン' }
  ]

  include ActiveHash::Associations
  has_many :cards
  end