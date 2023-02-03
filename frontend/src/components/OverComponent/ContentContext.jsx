/* eslint-disable react/prop-types */
import { createContext, useState, useMemo } from "react";

export const ContentContext = createContext();

export function ContentContextProvider({ children }) {
  const [inputActived, setInputActived] = useState(false);
  const [isScore, setIsScore] = useState(0);

  const value = useMemo(
    () => ({
      inputActived,
      setInputActived,
      isScore,
      setIsScore,
    }),
    [inputActived, setInputActived, isScore, setIsScore]
  );
  return (
    <ContentContext.Provider value={value}>{children}</ContentContext.Provider>
  );
}
