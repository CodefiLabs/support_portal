class InternalNotesController < ApplicationController
  before_action :set_internal_note, only: [:show, :edit, :update, :destroy]

  # GET /internal_notes
  # GET /internal_notes.json
  def index
    @internal_notes = InternalNote.all
  end

  # GET /internal_notes/1
  # GET /internal_notes/1.json
  def show
  end

  # GET /internal_notes/new
  def new
    @internal_note = InternalNote.new
  end

  # GET /internal_notes/1/edit
  def edit
  end

  # POST /internal_notes
  # POST /internal_notes.json
  def create
    @internal_note = InternalNote.new(internal_note_params)

    respond_to do |format|
      if @internal_note.save
        format.html { redirect_to @internal_note, notice: 'Internal note was successfully created.' }
        format.json { render :show, status: :created, location: @internal_note }
      else
        format.html { render :new }
        format.json { render json: @internal_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internal_notes/1
  # PATCH/PUT /internal_notes/1.json
  def update
    respond_to do |format|
      if @internal_note.update(internal_note_params)
        format.html { redirect_to @internal_note, notice: 'Internal note was successfully updated.' }
        format.json { render :show, status: :ok, location: @internal_note }
      else
        format.html { render :edit }
        format.json { render json: @internal_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internal_notes/1
  # DELETE /internal_notes/1.json
  def destroy
    @internal_note.destroy
    respond_to do |format|
      format.html { redirect_to internal_notes_url, notice: 'Internal note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internal_note
      @internal_note = InternalNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internal_note_params
      params.fetch(:internal_note, {})
    end
end
