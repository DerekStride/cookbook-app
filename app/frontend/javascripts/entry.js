import React, { Component } from 'react'
import ReactDOM from 'react-dom'

const styles = {
  app: {
    paddingTop: 40,
    textAlign: 'center',
  },
}

class App extends Component {
  render() {
    return (
      <div style={styles.app}>
        Welcome to React, Derek!
      </div>
    )
  }
}

const root = document.querySelector('#container')
ReactDOM.render(<App />, root)
