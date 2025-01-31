package haxe.ui.events;

class KeyboardEvent extends UIEvent {
    public static inline var KEY_DOWN:String = "keydown";
    public static inline var KEY_PRESS:String = "keypress";
    public static inline var KEY_UP:String = "keyup";

    public var keyCode:Int;
    public var altKey:Bool;
    public var ctrlKey:Bool;
    public var shiftKey:Bool;

    public function new(type:String) {
        super(type);
    }

    public override function clone():KeyboardEvent {
        var c:KeyboardEvent = new KeyboardEvent(this.type);
        c.type = this.type;
        c.target = this.target;
        c.keyCode = this.keyCode;
        c.altKey = this.altKey;
        c.ctrlKey = this.ctrlKey;
        c.shiftKey = this.shiftKey;
        return c;
    }
}