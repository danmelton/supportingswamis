class PersonalitiesController < ApplicationController
  # GET /personalities
  # GET /personalities.xml
  def index
    @personalities = Personality.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personalities }
    end
  end

  # GET /personalities/1
  # GET /personalities/1.xml
  def show
    @personality = Personality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personality }
    end
  end

  # GET /personalities/new
  # GET /personalities/new.xml
  def new
    @personality = Personality.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personality }
    end
  end

  # GET /personalities/1/edit
  def edit
    @personality = Personality.find(params[:id])
  end

  # POST /personalities
  # POST /personalities.xml
  def create
    @personality = Personality.new(params[:personality])

    respond_to do |format|
      if @personality.save
        flash[:notice] = 'Personality was successfully created.'
        format.html { redirect_to(@personality) }
        format.xml  { render :xml => @personality, :status => :created, :location => @personality }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personalities/1
  # PUT /personalities/1.xml
  def update
    @personality = Personality.find(params[:id])

    respond_to do |format|
      if @personality.update_attributes(params[:personality])
        flash[:notice] = 'Personality was successfully updated.'
        format.html { redirect_to(@personality) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personalities/1
  # DELETE /personalities/1.xml
  def destroy
    @personality = Personality.find(params[:id])
    @personality.destroy

    respond_to do |format|
      format.html { redirect_to(personalities_url) }
      format.xml  { head :ok }
    end
  end
end
