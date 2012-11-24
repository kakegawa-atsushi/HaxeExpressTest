package;

import js.Node;
import routes.IndexRoute;
import routes.DataRoute;

class App {
    static function main() {
        var express: Dynamic = Node.require("express");
        var http = Node.http;
        var indexRoute = new IndexRoute();
        var dataRoute = new DataRoute();
        var path = Node.path;

        var app: Dynamic = express();

        app.configure(function() {
            app.set("port", 3000);
            app.set("views", Node.__dirname + "/views");
            app.set("view engine", "jade");
            app.use(express.favicon());
            app.use(express.logger("dev"));
            app.use(express.bodyParser());
            app.use(express.methodOverride());
            app.use(app.router);
            untyped __js__("app.use(express.static(path.join(__dirname, 'public')))");
        });

        app.get("/", indexRoute.index);
        app.get("/data", dataRoute.data);

        http.createServer(app).listen(app.get("port"), function() {
            trace("Express server listening on port " + app.get("port"));
        });
    }
}