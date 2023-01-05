class Review < ApplicationRecord
  # Un avis doit appartenir à un restaurant.
  belongs_to :restaurant
  # Un avis doit avoir un contenu.
  # Un avis doit avoir une note.
  validates :content, :rating, presence: true
  # La note d’un avis doit être un entier. Par exemple, un avis avec une note de 2,5 doit être invalide !
  validates :rating, numericality: { only_integer: true }
  # La note d’un avis doit être un nombre entre 0 et 5.
  validates :rating, inclusion: { in: 0..5 }
    # message: "%{value} is not a valid rating"

end
