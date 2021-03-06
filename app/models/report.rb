class Report < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :first_name, :last_name, :birthday, :province, :phone1, :schoolname

  def self.search(search)
    if search
      term = "%#{search}%"
      where("first_name LIKE ? OR last_name LIKE ? OR summary LIKE ?", term, term, term)
    else
      all
    end
  end
end
