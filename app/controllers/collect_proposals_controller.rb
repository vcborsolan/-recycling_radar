class CollectProposalsController < ApplicationController
  before_action :set_collect_proposal, only: %i[ show accept destroy reject]
  before_action :set_item, only: :create
  before_action :set_user, only: :create
  protect_from_forgery with: :null_session


  # GET /collect_proposals or /collect_proposals.json
  def index
    @collect_proposals = CollectProposal.all
  end

  # GET /collect_proposals/1 or /collect_proposals/1.json
  def show
  end

  # GET /collect_proposals/new
  def new
    @collect_proposal = CollectProposal.new
  end

  # POST /collect_proposals or /collect_proposals.json
  def create
    @collect_proposal = CollectProposal.new(collect_proposal_params)
    @collect_proposal.item = @item
    @collect_proposal.user = @user


    respond_to do |format|
      if @collect_proposal.save
        # notify item.user about the new purpose
        format.html { redirect_to collect_proposal_url(@collect_proposal), notice: "Collect proposal was successfully created." }
        format.json { render :show, status: :created, location: @collect_proposal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collect_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collect_proposals/1 or /collect_proposals/1.json
  def destroy
    @collect_proposal.destroy

    respond_to do |format|
      format.html { redirect_to collect_proposals_url, notice: "Collect proposal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def accept
    @collect_proposal.status = "accepted"
    @collect_proposal.save
    redirect_to collect_proposals_url, notice: 'Collect proposal was successfully accepted.'
    # notify collect_proposal.user_id that it was accepted
  end
    
  def reject
    @collect_proposal.status = "rejected"
    @collect_proposal.save
    redirect_to collect_proposals_url, notice: 'Collect proposal was successfully rejected.'
    # notify collect_proposal.user_id that it was accepted
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collect_proposal
      @collect_proposal = CollectProposal.find(params[:id])
    end

    def set_item
      @item = Item.find(collect_proposal_params[:item_id])
    end
    
    def set_user
      @user = User.first
      # here upgrade it to current_user (will be necessary auth logic)
    end

    # Only allow a list of trusted parameters through.
    def collect_proposal_params
      params.require(:collect_proposal).permit(:collection_date, :item_id)
    end
end
