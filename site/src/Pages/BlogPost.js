import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";

function Overview() {
    const [data, setData] = useState([]);
    const [isLoading, setIsLoading] = useState(true);
    const [error, setError] = useState(null);
    const id = useParams().id;

    useEffect(() => {
        fetch("http://localhost/api.php?endpoint=blogpost&id=" + id, {
            method: "GET",
            mode: "cors",
        })
            .then((response) => response.json())
            .then((data) => {
                setData(data);
                setIsLoading(false);
            })
            .catch((error) => {
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
            <h1>{data.id}</h1>
            <h2>{data.title}</h2>
            <p>{data.text}</p>
        </div>
    );
}

export default Overview;
