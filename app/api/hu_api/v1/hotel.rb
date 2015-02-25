class HuApi::V1::Hotel < Grape::API

  resource :hotels do

    get do
      hotels = ::Hotel.all
      present hotels, with: Entity::Hotel
    end

    get ':q/:check_in/:check_out' do
      hotels = ::Hotel.or({name: /#{params[:q]}/i}, {city: /#{params[:q]}/i}, {neighborhood: /#{params[:q]}/i}).nin(unavailability: [params[:check_in].to_date, params[:check_out].to_date])
      present hotels, with: Entity::Hotel
    end

  end
end