/* eslint-disable import/no-extraneous-dependencies */

import { BrowserRouter, Routes, Route } from "react-router-dom";
import GameOne from "./components/OverComponent/GameOne";
import GameTwo from "./components/OverComponent/GameTwo";
import Dashboard from "./components/Dashboard";
import Explanation from "./components/Explanation";
import End from "./components/End";

function App() {
  // const [userToken, setUserToken] = useState(Cookies.get("userToken") || null);

  // const setUser = (token) => {
  //   if (token) {
  //     Cookies.set("userToken", token, {
  //       expires: 1 / 24,
  //     });
  //     setUserToken(token);
  //   } else {
  //     Cookies.remove("userToken");
  //     setUserToken(null);
  //   }
  // };
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Dashboard />} />
          <Route path="/explanation" element={<Explanation />} />
          <Route path="/one" element={<GameOne />} />
          <Route path="/two" element={<GameTwo />} />
          <Route path="/end" element={<End />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
