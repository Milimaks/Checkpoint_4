/* eslint-disable import/no-extraneous-dependencies */

import { BrowserRouter, Routes, Route } from "react-router-dom";
// import GameOne from "./components/OverComponent/GameOne";
// import GameTwo from "./components/OverComponent/GameTwo";
import Dashboard from "./components/Dashboard";

function App() {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          {/* <Route path="/one" element={<GameOne />} />
          <Route path="/two" element={<GameTwo />} /> */}
          <Route path="/" element={<Dashboard />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
