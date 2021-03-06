class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :owner

  validates :name, :breed_id, :owner_id, :dob, presence: true

  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: ":style_missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end

# == Schema Information
#
# Table name: dogs
#
#  id                  :integer          not null, primary key
#  name                :string
#  breed_id            :integer
#  owner_id            :integer
#  medical             :string
#  vet                 :string
#  dob                 :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  in_daycare          :boolean
#
# Indexes
#
#  index_dogs_on_breed_id  (breed_id)
#  index_dogs_on_owner_id  (owner_id)
#
