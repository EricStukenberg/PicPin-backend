class SearchTermsController < ApplicationController
  before_action :set_search_term, only: [:show, :update, :destroy]

  # GET /search_terms
  def index
    @search_terms = SearchTerm.all

    render json: @search_terms
  end

  # GET /search_terms/1
  def show
    render json: @search_term
  end

  # POST /search_terms
  def search

    search_results = Unsplash::Photo.search(params[:term])
    render json: search_results
    # @search_term = SearchTerm.new(term:params["term"], result:search_results)

    # if @search_term.save
    #   render json: @search_term, status: :created, location: @search_term
    # else
    #   render json: @search_term.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /search_terms/1
  def update
    if @search_term.update(search_term_params)
      render json: @search_term
    else
      render json: @search_term.errors, status: :unprocessable_entity
    end
  end


  # DELETE /search_terms/1
  def destroy
    @search_term.destroy
  end

  # def search 
  #   term = parm
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_term
      @search_term = SearchTerm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def search_term_params
      params.require(:search_term).permit(:term)
    end
end
