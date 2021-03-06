class TaskTypesController < ApplicationController
  # GET /task_types/new
  # GET /task_types/new.xml
  def new
    @task_type = TaskType.new
    @taks_type.project = Project.find(params[:project_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_type }
    end
  end

  # GET /task_types/1/edit
  def edit
    @task_type = TaskType.find(params[:id])
  end

  # POST /task_types
  # POST /task_types.xml
  def create
    @task_type = TaskType.new(params[:task_type])

    respond_to do |format|
      if @task_type.save
        flash[:notice] = 'TaskType was successfully created.'
        format.html { redirect_to(@task_type.project) }
        format.xml  { render :xml => @task_type, :status => :created, :location => @task_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_types/1
  # PUT /task_types/1.xml
  def update
    @task_type = TaskType.find(params[:id])

    respond_to do |format|
      if @task_type.update_attributes(params[:task_type])
        flash[:notice] = 'TaskType was successfully updated.'
        format.html { redirect_to(@task_type.project) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_types/1
  # DELETE /task_types/1.xml
  def destroy
    @task_type = TaskType.find(params[:id])
    @task_type.destroy

    respond_to do |format|
      format.html { redirect_to(@task_type.project) }
      format.xml  { head :ok }
    end
  end
end
