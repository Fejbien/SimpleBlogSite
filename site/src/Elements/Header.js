import "./Header.css";
import userIcon from "../icons/user.svg";
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
            <p className="links return">
                <Link to={"/"}>⮐</Link>
            </p>
            <h1>{headerName}</h1>
            <div className="actions">
                <p className="links">
                    <a href="mailto:fabian.sucholas123@gmail.com">✉</a>
                </p>
                <p className="links">
                    <Link to={"/login"}>
                        <img
                            src={userIcon}
                            alt="login button"
                            className="svgIcon"
                        ></img>
                    </Link>
                </p>
            </div>
        </div>
    );
}

export default Header;
