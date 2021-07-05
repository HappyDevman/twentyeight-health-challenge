class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :full_name, presence: true
  validates :birth_date, presence: true
  validates :state, presence: true
  validate :check_age_valid, if: ->(model) { model.state.present? }
  validate :product_presence, unless: ->(model) { model.product.valid? }

  has_one :product, dependent: :destroy

  accepts_nested_attributes_for :product

  def check_age_valid
    state_info = STATES.filter { |e| e[0] == state }[0]
    minimum_age = if product.valid? && AGE_DIFF_PRODUCTS.key?(product.ndc) && AGE_DIFF_PRODUCTS[product.ndc].key?(state)
                    is_diff = true
                    AGE_DIFF_PRODUCTS[product.ndc][state]
                  else
                    state_info.last
                  end
    product_reason = is_diff ? "for a product #{product.name}" : ''
    message = "Age should be over #{minimum_age} years old in #{state_info[0]} state #{product_reason}"
    errors.add(:birth_date, message) if age < minimum_age
  end

  def product_presence
    errors.add(:product, 'You should select a product')
  end

  def age
    age = Date.today.year - birth_date.year
    age -= 1 if Date.today < birth_date + age.years
    age
  end
end
