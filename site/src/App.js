import './App.css';
import { useState, useEffect } from 'react';

function App() {
  const [data, setData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetch('http://localhost/api.php?endpoint=overview', {
      method: 'GET',
      mode: 'cors'
    })
      .then(response => response.json())
      .then(data => {
        setData(data);
        setIsLoading(false);
      })
      .catch(error => {
        setError(error);
        setIsLoading(false);
      });
  }, []);

  if (isLoading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error.message}</div>;
  }

  return (
    <div>
      <h1>Data:</h1>
      <ul>
        {data.map(item => (
          <li key={item.id}>
            <h1>{item.id}</h1><h2>{item.title}</h2><p>{item.shortText}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;