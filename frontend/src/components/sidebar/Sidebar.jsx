import "./sidebar.scss";
import { useState, useEffect } from "react";

function Sidebar() {
  const [seconds, setSeconds] = useState(300);
  const [isActive, setIsActive] = useState(true);
  const [value, setValue] = useState("");

  useEffect(() => {
    let interval = null;
    if (isActive && seconds > 0) {
      interval = setInterval(() => {
        if (seconds <= 270) {
          setSeconds((second) => second - 10);
        } else if (seconds <= 290) {
          setSeconds((second) => second - 20);
        } else {
          setSeconds((second) => second - 10);
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
      <div className="top1" />
      <div className="top" />
      <div className="top1" />
      <div className="top" />
      <div className="top1">
        <p>
          {Math.floor(seconds / 60)}:
          {seconds % 60 < 10 ? `0${seconds % 60}` : seconds % 60} minutes
        </p>
        <input
          type="text"
          value={value}
          onChange={(e) => setValue(e.target.value)}
          disabled={isActive && seconds !== 0}
        />
      </div>
    </div>
  );
}

export default Sidebar;
