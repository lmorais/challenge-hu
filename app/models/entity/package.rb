# encoding: utf-8
module Entity
  class Package < Base
    expose :_id, documentation: {type: "string", desc: "BSON id"}, format_with: :to_string
    expose :name, documentation: {type: "string", desc: "Package name"}
    expose :daily, documentation: {type: "string", desc: "Package daily"}
    expose :guests, documentation: {type: "string", desc: "Package guests"}
    expose :price, documentation: {type: "integer", desc: "Package price"}

    with_options(format_with: :iso_timestamp) do
      expose :created_at, documentation: {type: "DateTime", desc: "List created at "}
      expose :updated_at, documentation: {type: "DateTime", desc: "List updated at "}
    end
  end
end