class Photo < ActiveRecord::Base
  has_attached_file :image,
                    :styles => {
                      :medium => "500x500>",
                      :thumb => "150x150>"
                    },
                    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :project

  default_scope { order(position: :asc) }

end