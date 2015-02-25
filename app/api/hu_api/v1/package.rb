# encoding: utf-8
class HuApi::V1::Package < Grape::API

  resource :packages do

    get do
      packages = ::Package.all
      present packages, with: Entity::Package
    end

    get ':q' do
      packages = ::Package.where(name: /#{params[:q]}/i)
      present packages, with: Entity::Package
    end

  end
end