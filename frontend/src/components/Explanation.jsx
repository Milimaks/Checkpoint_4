import React from "react";
import "./explanation.scss";
import { Link } from "react-router-dom";

function Explanation() {
  return (
    <div className="explanation">
      <div className="explanation_modal">
        <h1>Bonjour et bienvenue sur ce site plutôt bancal !</h1>
        <br />
        <br />
        <p>
          Tout va bien se passer tant que tu ne regardes pas le code, que tu ne
          rafraichis pas la page et que tu fais fonctionner ton cerveau un
          minimum
        </p>
        <br />
        <br />
        <p>
          Ton objectif sera de jouer et de réussir des mini-jeux les uns à la
          suite des autres. Plus tu es rapide, plus ton score augmente. Alors
          soit rapide, soit fort, soit les deux !
        </p>
        <p>P.S. N'oublie pas d'appuyer sur le cachet pour démarrer</p>
        <Link to="/two" className="link">
          <p className="cachet">
            <img src="https://i.postimg.cc/4NBYNqCR/22.png" alt="" />
          </p>
        </Link>
      </div>
    </div>
  );
}

export default Explanation;
