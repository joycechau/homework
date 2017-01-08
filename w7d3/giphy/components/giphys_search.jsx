import React, { Component } from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends Component {
  constructor() {
    super();
    this.state = { searchTerm: "" };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchSearchGiphys("corgi+puppies");
  }

  handleChange(e) {
    this.setState({ searchTerm: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(" ").join("+");
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    let { giphys } = this.props;
    return (
      <div>
        <form onSubmit={this.handleSubmit} className="search-bar">
          <input value={this.state.searchTerm}
                 onChange={this.handleChange}
                 placeholder="type search results"/>
          <button>Search</button>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    );
  }
}

export default GiphysSearch;
