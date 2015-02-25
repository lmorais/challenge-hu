# encoding: utf-8
module Entity
  class Hotel < Base
    expose :_id, documentation: {type: "string", desc: "BSON id"}, format_with: :to_string
    expose :name, documentation: {type: "string", desc: "Hotel name"}
    expose :city, documentation: {type: "string", desc: "Hotel City"}
    expose :neighborhood, documentation: {type: "string", desc: "Hotel Neighborhood"}

    with_options(format_with: :iso_timestamp) do
      expose :created_at, documentation: {type: "DateTime", desc: "List created at "}
      expose :updated_at, documentation: {type: "DateTime", desc: "List updated at "}
    end
  end
end