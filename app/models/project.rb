class Project < ActiveRecord::Base
  has_attached_file :cover,
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  default_scope { order(position: :asc) }

  scope :works,        -> { where(category: "works") }
  scope :competitions, -> { where(category: "competitions") }
  scope :workshops,    -> { where(category: "workshops") }
  scope :studies,      -> { where(category: "studies") }

end
