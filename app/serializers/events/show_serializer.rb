class Events::ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :description, :location
  belongs_to :group, serializer: Groups::ShowSerializer
  has_many :attendees, each_serializer: Attendees::ShowSerializer
end
