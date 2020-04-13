class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :material_time_stamp, :notebook_id
end