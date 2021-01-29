class Fnrh < ApplicationRecord
  belongs_to :user
  validates :hotel, presence: true
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :motivo, presence: true
  validates :meio_de_transporte, presence: true
end
