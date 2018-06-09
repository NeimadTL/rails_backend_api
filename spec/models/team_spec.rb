require 'rails_helper'

RSpec.describe Team, type: :model do

  it { should validate_presence_of :name }

  it { should belong_to(:manager) }
  it { should have_many(:members) }

end
