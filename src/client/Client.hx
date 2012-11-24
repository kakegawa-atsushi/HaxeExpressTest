package;

import js.Lib;
import js.Dom;
import jQuery.JQuery;

typedef JQEvent = jQuery.Event;

class Client {    
    static function main() {
        new JQuery(function(e: Event) {
            new JQuery("#button").click(function(event: JQEvent) {
                JQueryStatic.get(Lib.window.location.href + "data", null, function(data) {
                    new JQuery("#text-div").append(data);
                });
            });
        });
    }
}