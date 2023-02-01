/* eslint-disable react/prop-types */
import "./sidebar.scss";
import { useState, useEffect, useContext } from "react";
import { ContentContext } from "../OverComponent/ContentContext";

function Sidebar({ seconds, setSeconds, gameOver, setMdp }) {
  const [isActive, setIsActive] = useState(true);
  const [value, setValue] = useState("");

  const mdpUn = "Versavel";

  if (mdpUn === value) {
    setMdp(true);
  }

  const { inputActived } = useContext(ContentContext);

  useEffect(() => {
    let interval = null;
    if (inputActived === false && seconds > 0) {
      interval = setInterval(() => {
        if (seconds <= 200) {
          setSeconds((second) => second - 5);
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
      <div className="top" />
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
          <h2 className="">Versavel</h2>
        ) : (
          <h2 className="text-with-blur blur">Versavel</h2>
        )}
      </div>
      <div className="top1">
        <input
          type="text"
          value={value}
          onChange={(e) => setValue(e.target.value)}
          disabled={inputActived === false}
        />
      </div>
    </div>
  );
}

export default Sidebar;
