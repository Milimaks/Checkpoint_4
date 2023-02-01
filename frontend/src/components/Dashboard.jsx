import "./dashboard.scss";
import axios from "axios";
import { useState, useEffect } from "react";
import FormUser from "./FormUser";

export default function Dashboard() {
  const [users, setUsers] = useState([]);
  const [isLoading, setIsLoading] = useState(false);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/users`)
      .then((response) => {
        setUsers(response.data);
        setIsLoading(true);
      })
      .catch((err) => {
        console.error(err);
      });
  }, []);

  return (
    isLoading && (
      <div className="container">
        <div className="dashboard px-4 sm:px-6 lg:px-8">
          <div className="sm:flex sm:items-center" />
          <div className="mt-8 flex flex-col">
            <div className="-my-2 -mx-4 overflow-x-auto sm:-mx-6 lg:-mx-8">
              <div className="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                <div className="overflow-hidden shadow ring-1 ring-black ring-opacity-5 md:rounded-lg">
                  <h1>TABLEAU DES SCORES</h1>
                  <table className="min-w-full divide-y divide-gray-300">
                    <thead className="bg-gray-50">
                      <tr className="divide-x divide-gray-200">
                        <th
                          scope="col"
                          className="py-3.5 pl-4 pr-4 text-left text-sm font-semibold text-gray-900 sm:pl-6"
                        >
                          Rank
                        </th>
                        <th
                          scope="col"
                          className="px-4 py-3.5 text-left text-sm font-semibold text-gray-900"
                        >
                          Score
                        </th>
                        <th
                          scope="col"
                          className="px-4 py-3.5 text-left text-sm font-semibold text-gray-900"
                        >
                          Pseudo
                        </th>
                      </tr>
                    </thead>
                    <tbody className="divide-y divide-gray-200 bg-white">
                      {users
                        .sort((a, b) => b.score - a.score)
                        .map((user) => (
                          <tr
                            key={user.id}
                            className="divide-x divide-gray-200"
                          >
                            <td className="whitespace-nowrap py-4 pl-4 pr-4 text-sm font-medium text-gray-900 sm:pl-6">
                              {users.indexOf(user) + 1}
                            </td>
                            <td className="whitespace-nowrap p-4 text-sm text-gray-500">
                              {user.score}
                            </td>
                            <td className="whitespace-nowrap p-4 text-sm text-gray-500">
                              {user.name}
                            </td>
                          </tr>
                        ))
                        .slice(0, 10)}
                    </tbody>
                  </table>
                </div>
              </div>
              <div className="mt-4 sm:mt-0 sm:ml-16 sm:flex-none">
                <FormUser />
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  );
}
