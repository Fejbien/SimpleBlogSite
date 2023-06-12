import "./LoginPage.css";
import { useState } from "react";

function LoginPage() {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");

    const handleSubmit = (e) => {
        e.preventDefault();
        fetch("http://localhost/api.php?endpoint=login", { method: "Post" });
    };

    return (
        <div className="loginPage">
            <form onSubmit={handleSubmit}>
                <p>Email</p>
                <input
                    type="text"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                ></input>
                <p>Password</p>
                <input
                    type="password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                ></input>
                <button type="submit">Log in</button>
            </form>
        </div>
    );
}

export default LoginPage;
