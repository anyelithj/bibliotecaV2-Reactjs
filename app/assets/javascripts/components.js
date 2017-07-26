//= require_tree ./components
@reactLibros = React.createClass
  getInitialState: ->

  reactLibros: @props.data

  getDafaultProps:->

    reactLibros: []

  render:->
    React.DOM.div
      className:'recursousuariohola'

      React.DOM.h1
          className: 'title'
            'Libreria'
              React.DOM.table
              className: 'table table-bordered'
              React.DOM.thead null
                React.DOM.th null, 'id'
                React.DOM.th null, 'email'
                React.DOM.th null, 'cedula'
                React.DOM.th null, 'libro'
                React.DOM.th null, 'idlibro'
              React.DOM.tbody null,
              for recurso in @state.recursousuarios
                React.createElement recurso, key: recursousuarios.id, recurso: recurso
ReactDOM.render(<App />, components.getElementById('reactLibros'))
