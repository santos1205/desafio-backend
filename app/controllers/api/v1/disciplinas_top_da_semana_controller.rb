class Api::V1::DisciplinasTopDaSemanaController < Api::V1::ApiController
    def index
        @questions = Question.limit(10)
        render json: @questions
    end
end
