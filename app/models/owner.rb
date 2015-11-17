class Owner < ActiveRecord::Base
  has_many :dogs

  validates :first_name, :last_name, :phone, :evac_waiver, presence: true
  phony_normalize :phone, default_country_code: 'US'

  def last_comma_first
    "#{last_name}, #{first_name}"
  end

  # def evac_waiver_check
  #   if :evac_waiver
  #    link_to fa_icon('fa-check')
  # end

end

# == Schema Information
#
# Table name: owners
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  phone       :string
#  evac_waiver :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
