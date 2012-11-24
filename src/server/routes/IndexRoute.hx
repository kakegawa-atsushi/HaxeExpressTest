package routes;

class IndexRoute {

	public function new() {

	}

	public function index(req, res) {
		res.render("index", { title: "Express with Haxe" });
	}

}