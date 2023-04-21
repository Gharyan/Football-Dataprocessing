import axios from "axios"

const GOALSCORERS_REST_API_URL = "http://localhost:8080/goalscorers";

class GoalscorerService {

    getGoalscorers() {
        return axios.get(GOALSCORERS_REST_API_URL);
    }
}

export default new GoalscorerService();