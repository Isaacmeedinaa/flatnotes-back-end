class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_date, :created_at, :updated_at
  has_one :user

  def created_date
    @object.created_at.strftime("%B %d at %I:%M %p")
  end
  
end
