class MatchesController < ApplicationController

  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match.member, notice: "Successfully added #{@match.matched_member.name} as friend." }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    respond_to do |format|
      format.html { redirect_to member_path(@match.member_id), notice: "Removed #{@match.matched_member.name} as friend." }
      format.json { head :no_content }
    end
  end

  private

    def match_params
      params.require(:match).permit(:member_id, :matched_member_id)
    end
end