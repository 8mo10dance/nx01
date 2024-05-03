import React, { ReactNode } from "react";

import Header from "./Header";

export type Props = {
  title: string;
  children: ReactNode;
};

export default function Layout({ title, children }: Props) {
  return (
    <div>
      <Header title={title} />
      <main>{children}</main>
    </div>
  );
}
