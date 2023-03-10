/* eslint-disable react/prop-types */
import axios from "axios";
import { useNavigate } from "react-router-dom";
import Cookies from "js-cookie";

export default function FormUser() {
  //   const [name, setName] = useState();

  const navigate = useNavigate();

  const onSubmit = (e) => {
    e.preventDefault();

    const formData = new FormData(e.target);
    const updatedData = Object.fromEntries(formData);
    Cookies.remove("name");
    Cookies.remove("id");
    Cookies.set("name", updatedData.name, { expires: 7 });

    axios
      .post(`${import.meta.env.VITE_BACKEND_URL}/users`, updatedData)
      .then((data) => {
        Cookies.set("id", data.data.insertId, { expires: 7 });

        return navigate("/explanation");
      })
      .catch((error) => {
        console.error(error);
      });
  };

  return (
    <div className="pointer-events-auto w-screen max-w-md">
      <form
        className="flex h-full flex-col divide-y divide-gray-200  shadow-xl"
        onSubmit={onSubmit}
      >
        <div className="flex flex-shrink-0 justify-end px-4 py-4">
          <div>
            <div className="mt-1">
              <input
                autoComplete="off"
                type="text"
                name="name"
                id="project-name"
                className="block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                placeholder="Player Name"
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
