class ExtrasController < ApplicationController
  # GET /extras
  # GET /extras.xml
  def index
    @extras = Extra.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @extras }
    end
  end

  # GET /extras/1
  # GET /extras/1.xml
  def show
    @extra = Extra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @extra }
    end
  end

  # GET /extras/new
  # GET /extras/new.xml
  def new
    @extra = Extra.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @extra }
    end
  end

  # GET /extras/1/edit
  def edit
    @extra = Extra.find(params[:id])
  end

  # POST /extras
  # POST /extras.xml
  def create
    @extra = Extra.new(params[:extra])

    respond_to do |format|
      if @extra.save
        format.html { redirect_to(@extra, :notice => 'Extra was successfully created.') }
        format.xml  { render :xml => @extra, :status => :created, :location => @extra }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @extra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /extras/1
  # PUT /extras/1.xml
  def update
    @extra = Extra.find(params[:id])

    respond_to do |format|
      if @extra.update_attributes(params[:extra])
        format.html { redirect_to(@extra, :notice => 'Extra was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @extra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /extras/1
  # DELETE /extras/1.xml
  def destroy
    @extra = Extra.find(params[:id])
    @extra.destroy

    respond_to do |format|
      format.html { redirect_to(extras_url) }
      format.xml  { head :ok }
    end
  end
end
