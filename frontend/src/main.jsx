import React from "react";
import ReactDOM from "react-dom/client";
import "./setup.css";
import App from "./App";
import { ContentContextProvider } from "./components/OverComponent/ContentContext";
import { AuthContextProvider } from "./components/OverComponent/authContext";

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
  <React.StrictMode>
    <AuthContextProvider>
      <ContentContextProvider>
        <App />
      </ContentContextProvider>
    </AuthContextProvider>
  </React.StrictMode>
);
