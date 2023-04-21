import './App.css';
import React from 'react';
import BarChart from './components/BarChart';
import GoalscorerComponent from './components/GoalscorerComponent';

function App() {
  return (
    <div className="App">
      <GoalscorerComponent></GoalscorerComponent>
      <BarChart></BarChart>
    </div>
  );
}

export default App;
