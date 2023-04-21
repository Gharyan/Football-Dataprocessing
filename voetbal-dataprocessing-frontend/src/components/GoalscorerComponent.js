import React from "react";
import GoalscorerService from "./services/GoalscorerService";

export default class GoalscorerComponent extends React.Component {

    constructor(props) {
        super(props)

        this.state = {
            goalscorers: []
        }
    }

    componentDidMount() {
        GoalscorerService.getGoalscorers().then((response) => {
            this.setState({goalscorers : response.data})
        })
        .catch(function (ex) {
            console.log("Error: ", ex)
        })
    }

    render() {
        return (
            <div>
                <h2 className="text-center">Goalscorers</h2>
                <table className="table table-striped">
                    <thead>
                        <tr>
                            <th>Goalscorer Id</th>
                            <th>Goalscorer Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            this.state.goalscorers.map(goalscorer =>
                                <tr key={goalscorer.goalscorer_id}>
                                    <td>{goalscorer.goalscorer_id}</td>
                                    <td>{goalscorer.scorer}</td>
                                </tr>
                            )
                        }
                    </tbody>
                </table>
            </div>
        )
    }
}