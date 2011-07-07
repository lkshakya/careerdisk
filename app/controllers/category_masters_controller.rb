class CategoryMastersController < ApplicationController
  # GET /category_masters
  # GET /category_masters.xml
  def index
    @category_masters = CategoryMaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @category_masters }
    end
  end

  # GET /category_masters/1
  # GET /category_masters/1.xml
  def show
    @category_master = CategoryMaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category_master }
    end
  end

  # GET /category_masters/new
  # GET /category_masters/new.xml
  def new
    @category_master = CategoryMaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category_master }
    end
  end

  # GET /category_masters/1/edit
  def edit
    @category_master = CategoryMaster.find(params[:id])
  end

  # POST /category_masters
  # POST /category_masters.xml
  def create
    @category_master = CategoryMaster.new(params[:category_master])

    respond_to do |format|
      if @category_master.save
        format.html { redirect_to(@category_master, :notice => 'Category master was successfully created.') }
        format.xml  { render :xml => @category_master, :status => :created, :location => @category_master }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /category_masters/1
  # PUT /category_masters/1.xml
  def update
    @category_master = CategoryMaster.find(params[:id])

    respond_to do |format|
      if @category_master.update_attributes(params[:category_master])
        format.html { redirect_to(@category_master, :notice => 'Category master was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /category_masters/1
  # DELETE /category_masters/1.xml
  def destroy
    @category_master = CategoryMaster.find(params[:id])
    @category_master.destroy

    respond_to do |format|
      format.html { redirect_to(category_masters_url) }
      format.xml  { head :ok }
    end
  end
end
