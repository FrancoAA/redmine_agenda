class ContactosController < ApplicationController
  unloadable

  def index
    @contactos = Contacto.all
  end

  def new
    @accion = 'create'
    render :template => "contactos/edit", :formats => [:html]
  end

  def create
    @contacto = Contacto.new(params[:contacto])
    if @contacto.save then
      flash[:notice] = 'El contacto se ha creado con exito'  
      redirect_to :action => 'index'
    else
      flash[:error] = 'Los datos ingresados no son validos'
      redirect_to :action => 'new'
    end
  end

  def update
    @contacto = Contacto.find(params[:id])
    if @contacto then
      @contacto.nombre = params[:contacto][:nombre]
      @contacto.apellido = params[:contacto][:apellido]
      @contacto.telefono = params[:contacto][:telefono]
      @contacto.email = params[:contacto][:email]
      @contacto.empresa = params[:contacto][:empresa]
      @contacto.direccion = params[:contacto][:direccion]
      unless @contacto.save then
        flash[:error] = 'Los datos ingresados son invalidos'
        redirect_to :action => 'edit'
      else 
        flash[:notice] = 'Se han actualizado los datos del contacto'
        redirect_to :action => 'index'
      end
    end
  end

  def delete
    @contacto = Contacto.find(params[:id])
    if @contacto then
      @contacto.delete
      flash[:notice] = 'El contacto se ha elminado'
    else
      flash[:error] = 'El especificado no existe'
    end
    redirect_to :action => 'index'
  end

  def edit
    @accion = 'update'
    @contacto = Contacto.find(params[:id])
    render :template => "contactos/edit", :formats => [:html]
  end
  
  def show
    @contacto = Contacto.find(params[:id])
    render :template => "contactos/show", :formats => [:html]
  end
end
