import "./Header.css";
import { Link, useLocation } from "react-router-dom";

function Header() {
    const pathname = useLocation().pathname;
    let headerName = "";

    if (pathname === "/") headerName = "Blog";
    else if (pathname.includes("blogpost")) headerName = "Post";
    else if (pathname.includes("login")) headerName = "Login";
    else if (pathname.includes("register")) headerName = "Register";
    else headerName = "Invalid path!";

    return (
        <div className="header">
            <p className="links">
                <Link to={"/"}>⮐</Link>
            </p>
            <h1>{headerName}</h1>
            <p className="links">
                <a href="mailto:fabian.sucholas123@gmail.com">✉</a>
            </p>
        </div>
    );
}

export default Header;
