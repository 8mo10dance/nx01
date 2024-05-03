import React from "react";

import { Link } from "react-router-dom";

export type Props = {
  title: string;
};

export default function Header({ title }: Props) {
  return (
    <header>
      <h1>{title}</h1>
      <nav>
        <ul>
          <li>
            <Link to="/">TOP</Link>
          </li>
          <li>
            <Link to="/about">ABOUT</Link>
          </li>
        </ul>
      </nav>
    </header>
  );
}
