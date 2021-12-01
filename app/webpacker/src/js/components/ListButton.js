import React from "react"
import companyIcon from "images/company.png"

const ListButton = () => (
  <a
    className=
      "button-list bg-secondary text-white border-rounded padding-md box-shadow-inset"
    tabIndex="1"
    href="/sales" 
  >
    <img
      src={companyIcon}
      className="height-130 vertical-align-middle margin-right-md brightness-50 opacity-6"
    />
    <span className="vertical-align-middle margin-right-xl">
      Ver Listagem
    </span>
  </a>
)

export default React.memo(ListButton)
