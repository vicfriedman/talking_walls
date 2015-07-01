class QuizzesController < ApplicationController
  def new #get request to load form
    @quiz = Quiz.new
    10.times do
      @question = @quiz.questions.build 
      3.times do 
       @question.answers.build
      end
    end 
    
  end

  def create #post request to submit form
    @quiz = Quiz.create!(quiz_params)
    redirect_to action: 'index' 

  end

  # def index
  # end

  private
    def quiz_params
      params.require(:quiz).permit(:name, questions_attributes: [:content, :quiz_id, answers_attributes: [:content, :question_id]])
    end
end
