class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :title
  has_one :user
end
