Redmine::Plugin.register :eqplugin do
  name 'Eqplugin plugin'
  author 'Franco Alarcon'
  description 'Agenda de contactos'
  version '0.0.1'
  url 'http://www.equality.coop'
  author_url 'http://www.equality.coop'

  menu :top_menu, 
    :contactos, 
    {
      :controller => 'contactos', 
      :action => 'index' 
    }, 
    :caption => 'Eqamigos',
    :if => Proc.new { User.current.logged? }
end
