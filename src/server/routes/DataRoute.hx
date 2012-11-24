package routes;

import js.Lib;

class DataRoute {

    public function new() {

    }

    public function data(req, res) {
        res.write("test");
        res.end();
    }

}