/* eslint-disable no-restricted-syntax */
/* eslint-disable no-unused-vars */
/* eslint-disable no-shadow */
/* eslint-disable react/prop-types */

import {
  createContext,
  useState,
  useMemo,
  useCallback,
  useEffect,
} from "react";

import Cookies from "js-cookie";

export const AuthContext = createContext();

export function AuthContextProvider({ children }) {
  const [userToken, setUserToken] = useState(Cookies.get("userToken") || null);
  const [userName, setUserName] = useState(Cookies.get("name") || "");
  const [userScore, setUserScore] = useState(Cookies.get("score") || "");
  const [userData, setUserData] = useState(Cookies.get("id") || "");

  const setUser = useCallback((data) => {
    console.log(data);
    if (data.token) {
      Cookies.set("userToken", data.token, {
        expires: 1 / 24,
      });

      setUserToken(data.token);
      setUserData(data.users.id);
      setUserName(data.users.name);
      setUserScore(data.users.score);
      Cookies.set("score", data.users.score);
      Cookies.set("name", data.users.name);
      Cookies.set("id", data.users.id);
    }
  }, []);

  const removeCookies = () => {
    Cookies.remove("userToken");
    Cookies.remove("name");
    Cookies.remove("score");
    Cookies.remove("id");
  };
  const logout = () => {
    setUserData();
    removeCookies();
    setUserToken(null);
  };

  const value = useMemo(
    () => ({
      userToken,
      logout,
      setUser,
      setUserToken,
      userName,
      setUserName,
      userScore,
      setUserScore,
      userData,
      setUserData,
    }),
    [
      userToken,
      logout,
      setUser,
      setUserToken,
      userName,
      setUserName,
      userScore,
      setUserScore,
      userData,
      setUserData,
    ]
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}
