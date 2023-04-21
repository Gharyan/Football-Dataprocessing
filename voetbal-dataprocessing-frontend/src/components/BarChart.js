import React, { useState, useEffect } from "react";
import { Chart as ChartJS, BarElement, CategoryScale, LinearScale } from "chart.js";
import { Bar, } from "react-chartjs-2"

ChartJS.register(
    CategoryScale,
    LinearScale,
    BarElement
)

const BarChart = () => {

    const [chart, setChart] = useState([]); 

    var baseurl = "http://localhost:8080/goalscorers"

    useEffect(() => {
        const fetchGoalscorers = async () => {
            await fetch(baseurl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/Json',
                    'Access-Control-Allow-Origin' : '*'
                }
            }).then((response) => {
                response.json().then((json) => {
                    setChart(json.data)
                    console.log(json)
                })
            }).catch(error => {
                console.log(error);
            })
        }
        fetchGoalscorers()
    }, [baseurl])

    var data = {
        labels: ["Sad"],
        datasets: [{
            label: 'World Cup 2022',
            data: [1],
            backgroundColor: [
                'rgba(255, 99, 132, 1)'
            ],
            borderColor: [
                'rgb(255, 99, 132, 1)'
            ],
            borderWidth: 1
        }]
    }

    var options = {
        maintainAspectRatio: false,
        scales: {
            y: {
                beginAtZero: true,
            }

        },
        legend: {
            labels: {
                fontSize: 26
            }
        }
    }

    return (
        <div>
            <Bar
                data={data}
                height={400}
                options={options}
            />
        </div>
    )
}

export default BarChart