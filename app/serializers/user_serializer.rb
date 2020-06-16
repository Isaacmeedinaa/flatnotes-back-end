class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :notes_count
  has_many :notes

  def notes_count
    @object.notes.count
  end
  
end
