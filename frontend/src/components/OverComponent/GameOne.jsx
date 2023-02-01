import Sidebar from "../sidebar/Sidebar";

function GameOne() {
  return (
    <div className="list">
      <div className="fixed top-0 left-0">
        <Sidebar />
      </div>
      <div className="content pl-[20vw]" />
    </div>
  );
}

export default GameOne;
