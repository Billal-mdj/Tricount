class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :edit, :update]

    def index
        @participants = Participant.all
    end

    def show
        set_particpant
    end

    def new
        @participant = Participant.new
    end

    def edit
        if current_user == @participant.user
            render :edit
        else
            redirect_to root_path, alert: "Vous n'êtes pas autorisé à modifier cette dépense."
        end
    end

    def create 
        @participant = Participant.new(participant_params)
        if @participant.save
            redirect_to @participant, notice: 'Création success'
        else
            render :new
        end
    end

    def update
        if @participant.update(participant_params)
          redirect_to @participant, notice: 'Participant modifiée avec succès.'
        else
          render :edit
        end
      end
    
    private

    def set_particpant
        @participant = Participant.find(params[:id])
      end
        
    def participant_params
        params.require(:participant)
    end
end
