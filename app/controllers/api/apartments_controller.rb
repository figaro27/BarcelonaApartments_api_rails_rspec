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
      minprice = params.has_key?(:minprice) ? params['minprice']: 0
      maxprice = params.has_key?(:maxprice) ? params['maxprice']: inf
      minsqm = params.has_key?(:minsqm) ? params['minsqm']: 0
      maxsqm = params.has_key?(:maxsqm) ? params['maxsqm']: inf
      minbed = params.has_key?(:minbed) ? params['minbed']: 0
      maxbed = params.has_key?(:maxbed) ? params['maxbed']: inf

      apartment = Apartment.where('title Like ?', "%#{title}%")
                  .where(sqm: minsqm..maxsqm)
                  .where(numofbed: minbed..maxbed)
                  .where(price: minprice..maxprice)

      respond_with apartment, json: apartment
    end

    private

    def apartment_params
      params.require(:apartment).permit(:id, :title, :price, :sql, :numofbed, :numofbath, :picture)
    end
  end