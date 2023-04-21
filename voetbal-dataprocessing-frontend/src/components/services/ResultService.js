import axios from "axios"

const RESULTS_REST_API_URL = "http://localhost:8080/results";

class ResultService {

    getResults() {
        return axios.get(RESULTS_REST_API_URL);
    }
}

export default new ResultService();