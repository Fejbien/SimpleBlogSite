import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";

import Overview from "./Pages/Overview";
import BlogPost from "./Pages/BlogPost";

function Header() {
    return <h1>Hej</h1>;
}

function App() {
    return (
        <BrowserRouter>
            <Header />
            <Routes>
                <Route path="/" element={<Overview />} />
                <Route path="/blogpost/:id" element={<BlogPost />} />
            </Routes>
        </BrowserRouter>
    );
}

export default App;
