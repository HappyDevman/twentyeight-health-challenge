# frozen_string_literal: true

# full name, abbreviation, service offered, minimum age
STATES = [
  ['Alabama', 'AL', false, 17],
  ['Alaska', 'AK', false, 15],
  ['Arizona', 'AZ', false, 16],
  ['Arkansas', 'AR', false, 16],
  ['California', 'CA', true, 14],
  ['Colorado', 'CO', false, 13],
  ['Connecticut', 'CT', false, 17],
  ['Delaware', 'DE', false, 17],
  ['District of Columbia', 'DC', true, 17],
  ['Florida', 'FL', true, 17],
  ['Georgia', 'GA', false, 17],
  ['Hawaii', 'HI', false, 17],
  ['Idaho', 'ID', false, 17],
  ['Illinois', 'IL', false, 16],
  ['Indiana', 'IN', true, 17],
  ['Iowa', 'IA', false, 17],
  ['Kansas', 'KS', false, 18],
  ['Kentucky', 'KY', false, 17],
  ['Louisiana', 'LA', false, 17],
  ['Maine', 'ME', false, 17],
  ['Maryland', 'MD', false, 12],
  ['Massachusetts', 'MA', false, 17],
  ['Michigan', 'MI', true, 16],
  ['Minnesota', 'MN', false, 15],
  ['Mississippi', 'MS', false, 17],
  ['Missouri', 'MO', false, 17],
  ['Montana', 'MT', false, 17],
  ['Nebraska', 'NE', true, 17],
  ['Nevada', 'NV', false, 17],
  ['New Hampshire', 'NH', false, 17],
  ['New Jersey', 'NJ', false, 17],
  ['New Mexico', 'NM', false, 17],
  ['New York', 'NY', true, 15],
  ['North Carolina', 'NC', false, 17],
  ['North Dakota', 'ND', false, 16],
  ['Ohio', 'OH', false, 17],
  ['Oklahoma', 'OK', false, 17],
  ['Oregon', 'OR', false, 17],
  ['Pennsylvania', 'PA', true, 16],
  ['Puerto Rico', 'PR', false, 17],
  ['Rhode Island', 'RI', false, 16],
  ['South Carolina', 'SC', false, 16],
  ['South Dakota', 'SD', false, 17],
  ['Tennessee', 'TN', false, 17],
  ['Texas', 'TX', true, 17],
  ['Utah', 'UT', false, 17],
  ['Vermont', 'VT', false, 15],
  ['Virginia', 'VA', false, 14],
  ['Washington', 'WA', false, 17],
  ['West Virginia', 'WV', false, 17],
  ['Wisconsin', 'WI', false, 17],
  ['Wyoming', 'WY', true, 15]
].freeze

CATEGORIES = [
  'Birth Control',
  'Emergency Contraception',
  'Testing Kits',
  'OTC Products'
].freeze

# To implement Part 2, I just added banned_states key and value to hash
# For first product 'Tri-Sprintec', that should be unavailable for states that listed on banned_states
PRODUCTS = [
  { name: 'Tri-Sprintec', category: 'Birth Control', ndc: '00000-00-001', qty: 28, price: 20, instructions: 'Lorem ipsum', banned_states: ['Alabama', 'West Virginia'] },
  { name: 'Jasmiel', category: 'Birth Control', ndc: '00000-00-002', qty: 21, price: 84, instructions: 'Lorem ipsum' },
  { name: 'Plan B', category: 'Emergency Contraception', ndc: '00000-00-003', qty: 1, price: 30, instructions: 'Lorem ipsum' },
  { name: 'Herpes STI Kit', category: 'Testing Kits', ndc: '00000-00-004', qty: 1, price: 99, instructions: 'Lorem ipsum' },
  { name: 'Prenatal Vitamins', category: 'OTC Products', ndc: '00000-00-005', qty: 1, price: 29, instructions: 'Lorem ipsum' },
  { name: 'Ibuprofen', category: 'OTC Products', ndc: '00000-00-006', qty: 60, price: 45, instructions: 'Lorem ipsum' }
].freeze

# To implement Part 3, added hash for products that can be offered in some states but the minimum age requirement
# is different for these products than all other ones in this state.
AGE_DIFF_PRODUCTS = {
  '00000-00-002' => {
    'Washington' => 18,
    'West Virginia' => 19,
    'South Carolina' => 17
  }
}.freeze