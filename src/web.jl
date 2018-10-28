using Genie

import Genie.Router: route

route("/") do
    "this is a index"
end

Genie.AppServer.startup(5000)

