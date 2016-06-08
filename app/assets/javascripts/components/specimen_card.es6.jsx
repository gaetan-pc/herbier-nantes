class SpecimenCard extends React.Component {
  render () {
    return (
        <div className="large-4 medium-4 small-6 columns">
          <div className="specimen-card">
            <div className="row collapse">
              <div className="medium-5 columns">
                <img src={this.props.imgUrl} alt="planche herbier"/>
              </div>
              <div className="medium-7 columns">
                <div className="card-title">{this.props.taxon}</div>
                <div className="card-description">{this.props.description}</div>
                <div className="row">
                  <div className="medium-12 medium-centered columns">
                    <a href={this.props.linkTo} className="button btn-card">Voir la planche</a>
                  </div>
                </div> 
              </div>
            </div>
          </div>

        </div>
    );
  }
}

SpecimenCard.propTypes = {
  taxon: React.PropTypes.string,
  description: React.PropTypes.string,
  imgUrl: React.PropTypes.string,
  specimenId: React.PropTypes.number,
  linkTo: React.PropTypes.string
};
