/* eslint-disable import/no-extraneous-dependencies */
/* eslint-disable consistent-return */
import axios from "axios";
import { useEffect, useState, useContext } from "react";
import { JigsawPuzzle } from "react-jigsaw-puzzle/lib";
import "react-jigsaw-puzzle/lib/jigsaw-puzzle.css";
import { useNavigate } from "react-router-dom";
import Sidebar from "../sidebar/Sidebar";
import "./content.scss";
import CustomizedDialogs from "./CustomizedDialogs";

import { ContentContext } from "./ContentContext";
import { AuthContext } from "./authContext";

function GameTwo() {
  const [seconds, setSeconds] = useState(300);
  const [isActived, setIsActived] = useState(true);
  const [count, setCount] = useState(0);
  const [gameOver, setGameOver] = useState(false);
  const [value, setValue] = useState("");
  const [valueSide, setValueSide] = useState("");
  const [mdp, setMdp] = useState(false);

  const mdpPuzzle = "Versavel";

  const navigate = useNavigate();

  const { userData } = useContext(AuthContext);
  const { setInputActived } = useContext(ContentContext);

  if (value === "Spiderman") {
    navigate("/one");
  }

  useEffect(() => {
    if (isActived) {
      const timer = setTimeout(() => {
        setCount(count + 1);
        setIsActived(false);
      }, 2000);
      return () => clearTimeout(timer);
    }
  }, [count, isActived]);

  const Solved = () => {
    setInputActived(true);
    setGameOver(true);
    const id = userData;
    const score = seconds;

    axios
      .put(`${import.meta.env.VITE_BACKEND_URL}/users/${userData}`, {
        id,
        score,
      })
      .then(() => {})
      .catch((error) => {
        console.error(error);
      });
  };

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
        />
      </div>
      {seconds === 0 ? (
        <div className="flex h-screen justify-center items-center content pl-[20vw]">
          <img
            className="min-w-[30vw] max-w-[30vw] min-h-[50vh] max-h-[50vh]"
            src="https://media.tenor.com/Y8cXe42GXO0AAAAd/loser-dance.gif"
            alt=""
          />
        </div>
      ) : (
        <div className="content pl-[20vw]">
          {isActived ? (
            <img
              src="https://img.lemde.fr/2022/12/22/5/0/1730/865/768/384/75/0/e968e4d_1671703423578-b5e.jpeg"
              alt=""
            />
          ) : (
            <JigsawPuzzle
              imageSrc="https://img.lemde.fr/2022/12/22/5/0/1730/865/768/384/75/0/e968e4d_1671703423578-b5e.jpeg"
              rows={2}
              columns={1}
              onSolved={Solved}
            />
          )}
          {mdp && (
            <div className="modal">
              <CustomizedDialogs setValue={setValue} />
            </div>
          )}
        </div>
      )}
    </div>
  );
}

export default GameTwo;
