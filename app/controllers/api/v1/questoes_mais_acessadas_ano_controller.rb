class Api::V1::QuestoesMaisAcessadasAnoController < Api::V1::ApiController
    def index        
        qAccess = QuestionAccess.where(date: 1.year.ago..Date.today)
                                    .group(:question_id)
                                    .select('question_id, date, sum(times_accessed) as qtdeTotal')

        qAccess = qAccess.order('qtdeTotal').reverse
        result = []
        for item in qAccess
            n_question = Question.find_by(id: item.question_id)
            if n_question != nil                
                result << { statement_question: n_question.statement, qtdeTotal: item.qtdeTotal }
            end            
        end

        # render json: qAccess
        render json: result
    end
end
