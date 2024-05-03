import React from "react";
import { useHistory } from "react-router-dom";

export default function Home() {
  const history = useHistory();

  return (
    <div>
      <h1>HOME</h1>
      <button
        onClick={() => {
          history.replace("/about");
        }}
      >
        click
      </button>
    </div>
  );
}
