class Publication < ActiveRecord::Base

	include AASM

  has_many :publication_attachments , :dependent => :destroy
  accepts_nested_attributes_for :publication_attachments

  belongs_to :comuna
  belongs_to :region

  belongs_to :user



 
  validates :titulo , :presence => {:message => "es requerido"}
  validates :precio , :presence => {:message => "es requerido"}
  validates :region_id , :presence => {:message => "es requerido"}
  validates :tipo , :presence => {:message => "es requerido"}
  validates :dormitorio , :presence => {:message => "es requerido"}
  validates :baño , :presence => {:message => "es requerido"}
  validates :descripcion , :presence => {:message => "es requerido"}






  def display_day_published

	"Publicado el #{created_at.strftime('%-b %-d, %Y')}"

end



scope :most_recent, -> { order(id: :desc)}

  aasm column: "state" do

	state :in_draft, initial: true
	state :published

	event :publish do
		transitions from: :in_draft, to: :published
	end

	event :unpublish do

		transitions from: :published, to: :in_draft
	end

end
end
