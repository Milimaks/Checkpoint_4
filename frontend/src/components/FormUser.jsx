/* eslint-disable react/prop-types */
// import { useState } from "react";
import axios from "axios";

export default function FormUser() {
  //   const [name, setName] = useState("");

  const onSubmit = (e) => {
    e.preventDefault();

    const formData = new FormData(e.target);
    const updatedData = Object.fromEntries(formData);

    axios
      .put(`${import.meta.env.VITE_BACKEND_URL}/movie`, updatedData)
      .then(() => {
        // setName(updatedData);
      })
      .catch((error) => {
        console.error(error);
      });
  };

  return (
    <div className="pointer-events-auto w-screen max-w-md">
      <form
        className="flex h-full flex-col divide-y divide-gray-200 bg-white shadow-xl"
        onSubmit={onSubmit}
      >
        <div className="flex flex-shrink-0 justify-end px-4 py-4">
          <div>
            <div className="mt-1">
              <input
                type="text"
                name="name"
                id="project-name"
                className="block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                placeholder="Your player name"
              />
            </div>
          </div>
          <button
            type="submit"
            className="ml-4 inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
          >
            New Player
          </button>
        </div>
      </form>
    </div>
  );
}
