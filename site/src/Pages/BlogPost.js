import "./BlogPost.css";
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
        // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    if (isLoading) {
        return <div>Loading...</div>;
    }

    if (error) {
        return <div>Error: {error.message}</div>;
    }

    return (
        <div className="blogPost">
            <div className="post gradient-border">
                <h1 className="title">{data.title}</h1>
                <div className="authorAndDate">
                    <p>Author: {data.author}</p>
                    <p>
                        Published:{" "}
                        {data.published.substring(0, data.published.length - 3)}
                    </p>
                </div>
                <p>{data.text}</p>
            </div>
        </div>
    );
}

export default Overview;
