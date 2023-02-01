/* eslint-disable react/prop-types */
import { createContext, useState, useMemo } from "react";

export const ContentContext = createContext();

export function ContentContextProvider({ children }) {
  const [inputActived, setInputActived] = useState(false);

  const value = useMemo(
    () => ({
      inputActived,
      setInputActived,
    }),
    [inputActived, setInputActived]
  );
  return (
    <ContentContext.Provider value={value}>{children}</ContentContext.Provider>
  );
}
