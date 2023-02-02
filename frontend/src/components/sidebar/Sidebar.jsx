/* eslint-disable react/prop-types */

import "./sidebar.scss";
import { useState, useEffect, useContext } from "react";

import { ContentContext } from "../OverComponent/ContentContext";
import { AuthContext } from "../OverComponent/authContext";

function Sidebar({
  seconds,
  setSeconds,
  gameOver,
  setMdp,
  mdpPuzzle,
  valueSide,
  setValueSide,
}) {
  const [isActive, setIsActive] = useState(true);

  const { userName } = useContext(AuthContext);

  if (valueSide === mdpPuzzle) {
    setMdp(true);
  }

  const { inputActived } = useContext(ContentContext);

  // useEffect(() => {git
  //   axios
  //     .get(`${import.meta.env.VITE_BACKEND_URL}/users/${userData}`)
  //     .then((response) => {
  //       console.log(response.data);
  //       setUserName(response.data.name);
  //     })
  //     .catch((err) => {
  //       console.error(err);
  //     });
  // }, [userName]);

  useEffect(() => {
    let interval = null;
    if (inputActived === false && seconds > 0) {
      interval = setInterval(() => {
        if (seconds <= 280) {
          setSeconds((second) => second - 8);
        } else if (seconds <= 290) {
          setSeconds((second) => second - 2);
        } else {
          setSeconds((second) => second - 1);
        }
      }, 1000);
    } else if (!isActive || seconds === 0) {
      clearInterval(interval);
      setIsActive(false);
    }
    return () => clearInterval(interval);
  }, [isActive, seconds]);

  return (
    <div className="sidebar">
      <div className="top">
        <h2>{userName}</h2>
      </div>
      <div className="top1">
        <p>
          {Math.floor(seconds / 60)}:
          {seconds % 60 < 10 ? `0${seconds % 60}` : seconds % 60} minutes
        </p>
      </div>
      <div className="top" />

      <div className="top1" />
      <div className="top">
        <h1>Mot de passe :</h1>

        {gameOver ? (
          <h2 className="">{mdpPuzzle}</h2>
        ) : (
          <h2 className="text-with-blur blur">{mdpPuzzle}</h2>
        )}
      </div>
      <div className="top1">
        <input
          type="text"
          value={valueSide}
          onChange={(e) => setValueSide(e.target.value)}
          disabled={inputActived === false}
        />
      </div>
    </div>
  );
}

export default Sidebar;
