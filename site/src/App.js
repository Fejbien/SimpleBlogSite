import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";

import Overview from "./Pages/Overview";
import BlogPost from "./Pages/BlogPost";
import LoginPage from "./Pages/LoginPage";

import Header from "./Elements/Header";

function App() {
    return (
        <BrowserRouter>
            <Header />
            <Routes>
                <Route path={"/"} element={<Overview />} />
                <Route path={"/blogpost/:id"} element={<BlogPost />} />
                <Route path={"/login"} element={<LoginPage />} />
                {/*<Route path={"/register"} element={<RegisterPage />} />*/}
            </Routes>
        </BrowserRouter>
    );
}

export default App;
