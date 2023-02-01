/* eslint-disable consistent-return */
import { useEffect, useState } from "react";
// import { JigsawPuzzle } from "react-jigsaw-puzzle/lib";
// import "react-jigsaw-puzzle/lib/jigsaw-puzzle.css";
import Sidebar from "../sidebar/Sidebar";
import "./content.scss";

function GameTwo() {
  const [isActive, setIsActive] = useState(true);
  const [count, setCount] = useState(0);

  useEffect(() => {
    if (isActive) {
      const timer = setTimeout(() => {
        setCount(count + 1);
        setIsActive(false);
      }, 2000);
      return () => clearTimeout(timer);
    }
  }, [count, isActive]);

  return (
    <div className="list">
      <div className="fixed top-0 left-0">
        <Sidebar />
      </div>
      {/* <div className="content pl-[20vw]">
        {isActive ? (
          <img
            src="https://img.lemde.fr/2022/12/22/5/0/1730/865/768/384/75/0/e968e4d_1671703423578-b5e.jpeg"
            alt=""
          />
        ) : (
          <JigsawPuzzle
            imageSrc="https://img.lemde.fr/2022/12/22/5/0/1730/865/768/384/75/0/e968e4d_1671703423578-b5e.jpeg"
            rows={3}
            columns={4}
            onSolved={() => alert("Solved!")}
          />
        )}
      </div> */}
    </div>
  );
}

export default GameTwo;
