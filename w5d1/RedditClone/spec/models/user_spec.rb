require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  # validations
  it { should validate_presence_of(:username) }

  # associations
  it { should have_many(:subs) }

end
