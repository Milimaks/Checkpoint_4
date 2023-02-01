import React from "react";
import ReactDOM from "react-dom/client";
import "./setup.css";
import App from "./App";
import { ContentContextProvider } from "./components/OverComponent/ContentContext";

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
  <React.StrictMode>
    <ContentContextProvider>
      <App />
    </ContentContextProvider>
  </React.StrictMode>
);
