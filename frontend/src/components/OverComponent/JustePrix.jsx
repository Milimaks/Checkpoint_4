/* eslint-disable no-unused-vars */
/* eslint-disable react/prop-types */
import { useState, useContext } from "react";
import "./content.scss";
import axios from "axios";
import "./justePrix.scss";
import { ContentContext } from "./ContentContext";
import { AuthContext } from "./authContext";

function JustePrix({ setGameOver, seconds }) {
  const [prix, setPrix] = useState(Math.floor(Math.random() * 100) + 1);
  const [inputValue, setInputValue] = useState("");
  const [message, setMessage] = useState("");

  const { setIsScore, isScore, setInputActived } = useContext(ContentContext);
  const { userData } = useContext(AuthContext);

  function handleChange(e) {
    setInputValue(e.target.value);
  }

  function handleSubmit(e) {
    e.preventDefault();
    const guess = parseInt(inputValue, 10);
    if (guess === prix) {
      setMessage("Bravo! Vous avez trouvé le bon prix!");
      setInputActived(true);
      setGameOver(true);
      const id = userData;

      const score = seconds + isScore;
      setIsScore(score);

      axios
        .put(`${import.meta.env.VITE_BACKEND_URL}/users/${userData}`, {
          id,
          score,
        })
        .then(() => {})
        .catch((error) => {
          console.error(error);
        });
    } else if (guess > prix) {
      setMessage("Le prix est plus bas");
    } else {
      setMessage("Le prix est plus haut");
    }
    setInputValue("");
  }

  return (
    <div className="flex justePrix pl-[20vw]">
      <div className="Prix flex flex-col  h-screen justify-center ">
        <h1>Juste Prix</h1>
        <form onSubmit={handleSubmit}>
          <input type="number" value={inputValue} onChange={handleChange} />
          <button type="submit" className="text-black ml-4">
            <h2>Deviner le nombre entre 1 et 100</h2>
          </button>
        </form>
        <p className="text-[#E4201D] ">{message}</p>
      </div>
    </div>
  );
}

export default JustePrix;
