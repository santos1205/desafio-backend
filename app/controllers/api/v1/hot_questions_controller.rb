class Api::V1::HotQuestionsController < Api::V1::ApiController
    def index
        @questions = Question.all()
        render json: @questions
    end
end
