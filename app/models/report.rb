class Report < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.search(search)
    if search
      where("full_name LIKE ?", "%#{search}%")
      where("last_name LIKE ?", "%#{search}%")
      where("summary LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
