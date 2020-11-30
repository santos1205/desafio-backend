class Api::V1::TopDisciplinasDiaController < Api::V1::ApiController
    def index        
        disciplines = Question.order(:daily_access).reverse_order
        render json: disciplines
    end
end
