import "./Overview.css";
import { useState, useEffect } from "react";
import { Link } from "react-router-dom";

function Overview() {
    const [data, setData] = useState([]);
    const [isLoading, setIsLoading] = useState(true);
    const [error, setError] = useState(null);

    useEffect(() => {
        fetch("http://localhost/api.php?endpoint=overview", {
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
        <div className="overview">
            <div className="cardsTable">
                {data.map((item) => (
                    <div className="card gradient-border" key={item.id}>
                        <h1 className="title">{item.title}</h1>
                        <p className="shortText">{item.shortText}</p>
                        <Link to={"/blogpost/" + item.id}>Show blog post</Link>
                    </div>
                ))}
            </div>
        </div>
    );
}

export default Overview;
