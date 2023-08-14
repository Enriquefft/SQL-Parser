const std = @import("std");
const expect = std.testing.expect;
const print = std.debug.print;
const intToPtr = std.mem.intToPtr;

const FileOpenError = error{
    AccessDenied,
    OutOfMemory,
    FileNotFound,
};

const AllocationError = error{OutOfMemory};

pub fn main() !void {
    var x: u16 = 0;
    var y: *u8 = intToPtr(*u8, x);
    _ = y;
}
