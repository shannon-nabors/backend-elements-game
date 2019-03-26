class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :mode, :correct, :total, :created_at
  belongs_to :user
end
