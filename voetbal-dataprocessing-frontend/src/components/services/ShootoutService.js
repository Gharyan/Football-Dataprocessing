import axios from "axios"

const SHOOTOUT_REST_API_URL = "http://localhost:8080/shootouts";

class ShootoutService {

    getShooutouts() {
        return axios.get(SHOOTOUT_REST_API_URL);
    }
}

export default new ShootoutService();