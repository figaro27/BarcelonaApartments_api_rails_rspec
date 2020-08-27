class Api::ApartmentsController < Api::BaseController

    # def index
    #   respond_with Apartment.all
    # end

    def create
      respond_with :api, Apartment.create(apartment_params)
    end

    def destroy
      respond_with Apartment.destroy(params[:id])
    end

    def update
      apartment = Apartment.find(params["id"])
      apartment.update_attributes(apartment_params)
      respond_with apartment, json: apartment
    end

    def index
      inf = Float::INFINITY
      title = params.has_key?(:title) ? params['title']: ""
      minprice = params.has_key?(:minprice) ? params['minprice'].to_f: 0
      maxprice = params.has_key?(:maxprice) ? params['maxprice'].to_f: inf
      minsqm = params.has_key?(:minsqm) ? params['minsqm'].to_f: 0
      maxsqm = params.has_key?(:maxsqm) ? params['maxsqm'].to_f: inf
      minrooms = params.has_key?(:minrooms) ? params['minrooms'].to_i: 0
      maxrooms = params.has_key?(:maxrooms) ? params['maxrooms'].to_i: inf

      apartment = Apartment.where('title Like ?', "%#{title}%")
                  .where(sqm: minsqm..maxsqm)
                  .where(numofbed: minrooms..maxrooms)
                  .where(price: minprice..maxprice)

      respond_with apartment, json: apartment
    end

    private

    def apartment_params
      params.require(:apartment).permit(:id, :title, :price, :sql, :numofbed, :numofbath, :picture)
    end
  end