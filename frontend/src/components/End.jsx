import "./dashboardEnd.scss";
import axios from "axios";
import { useState, useEffect, useContext } from "react";
import FormUserEnd from "./FormUserEnd";
import { AuthContext } from "./OverComponent/authContext";
import CustomizedDialogsEnd from "./OverComponent/CustomizedDialogsEnd";
import trophyicon from "../assets/trophy-icon.svg";
import ranking from "../assets/ranking.svg";
import Kirby from "../assets/Kirby.svg";

export default function End() {
  const [users, setUsers] = useState([]);
  const [isLoading, setIsLoading] = useState(false);

  const { logout } = useContext(AuthContext);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/users`)
      .then((response) => {
        logout();
        setUsers(response.data);
        setIsLoading(true);
      })
      .catch((err) => {
        console.error(err);
      });
  }, []);

  return (
    isLoading && (
      <div className="containerEnd">
        <CustomizedDialogsEnd />

        <div className="dashboard  px-4 sm:px-6 lg:px-8">
          <div className="sm:flex sm:items-center" />
          <div className="mt-8 flex flex-col">
            <div className="-my-2 -mx-4 overflow-x-auto sm:-mx-6 lg:-mx-8">
              <div className="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                <div className="overflow-hidden shadow ring-1 ring-black ring-opacity-5 md:rounded-lg">
                  <h1 className="flex justify-center text-4xl font-medium text-gray-900">
                    TABLEAU DES SCORES
                  </h1>
                  <table className="min-w-full divide-y divide-gray-300">
                    <thead className="bg-gray-50">
                      <tr className="divide-x divide-gray-200">
                        <th
                          scope="col"
                          className="py-3.5 pl-4 pr-4 text-left text-sm font-semibold text-gray-900 sm:pl-6"
                        >
                          <div className="w-full flex justify-between items-center gap-2">
                            Rank{" "}
                            <img className=" h-8 w-8" src={ranking} alt="" />
                          </div>
                        </th>
                        <th
                          scope="col"
                          className="px-4 py-3.5 text-left text-sm font-semibold text-gray-900"
                        >
                          <div className="w-full flex justify-between items-center gap-2">
                            Score{" "}
                            <img
                              className=" h-10 w-6"
                              src={trophyicon}
                              alt=""
                            />
                          </div>
                        </th>
                        <th
                          scope="col"
                          className="px-4 py-3.5 text-left text-sm font-semibold text-gray-900"
                        >
                          <div className="w-full flex justify-between items-center gap-2">
                            Pseudo{" "}
                            <img className=" h-10 w-8" src={Kirby} alt="" />
                          </div>
                        </th>
                      </tr>
                    </thead>
                    <tbody className="bg-opacity-50 divide-y divide-gray-200 bg-white">
                      {users
                        .sort((a, b) => b.score - a.score)
                        .map((user) => (
                          <tr
                            key={user.id}
                            className="divide-x divide-gray-200"
                          >
                            <td className="whitespace-nowrap py-4 pl-4 pr-4 text-sm font-semibold text-gray-900 sm:pl-6">
                              {users.indexOf(user) + 1}
                            </td>
                            <td className="whitespace-nowrap p-4 font-semibold text-sm text-black">
                              {user.score}
                            </td>
                            <td className="whitespace-nowrap p-4  font-semibold text-sm text-gray-900">
                              {user.name}
                            </td>
                          </tr>
                        ))
                        .slice(0, 10)}
                    </tbody>
                  </table>
                </div>
              </div>
              <div className="flex justify-center mt-4 sm:mt-0  sm:flex-none">
                <FormUserEnd />
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  );
}
