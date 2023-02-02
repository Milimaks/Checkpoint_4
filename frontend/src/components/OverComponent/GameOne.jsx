import { useState } from "react";
import { useNavigate } from "react-router-dom";
import Sidebar from "../sidebar/Sidebar";
import "./content.scss";
import JustePrix from "./JustePrix";

function GameOne() {
  const [seconds, setSeconds] = useState(248);
  const [gameOver, setGameOver] = useState(false);
  const [mdp, setMdp] = useState(false);
  const [valueSide, setValueSide] = useState("");

  const mdpPuzzle = "Cookie";
  const navigate = useNavigate();

  if (valueSide === "Batman") {
    navigate("/end");
  }

  return (
    <div className="list">
      <div className="fixed top-0 left-0">
        <Sidebar
          valueSide={valueSide}
          setValueSide={setValueSide}
          mdpPuzzle={mdpPuzzle}
          seconds={seconds}
          setSeconds={setSeconds}
          gameOver={gameOver}
          setMdp={setMdp}
          mdp={mdp}
        />
      </div>
      <div className="content pl-[20vw]">
        <JustePrix setGameOver={setGameOver} />
      </div>
    </div>
  );
}

export default GameOne;
