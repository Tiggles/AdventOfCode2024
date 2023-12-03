const std = @import("std");
const Allocator = std.mem.Allocator;
const List = std.ArrayList;
const Map = std.AutoHashMap;
const StrMap = std.StringHashMap;
const BitSet = std.DynamicBitSet;

const util = @import("util.zig");
const gpa = util.gpa;

const data = @embedFile("data/day01.txt");

pub fn main() !void {
    var sum = 0;
    for (splitAny(u8, data, "\n")) |line| {
        std.debug.print("{}\n", .{line});
    }
}

// Useful stdlib functions
const tokenizeAny = std.mem.tokenizeAny;
const tokenizeSeq = std.mem.tokenizeSequence;
const tokenizeSca = std.mem.tokenizeScalar;
const splitAny = std.mem.splitAny;
const splitSeq = std.mem.splitSequence;
const splitSca = std.mem.splitScalar;
const indexOf = std.mem.indexOfScalar;
const indexOfAny = std.mem.indexOfAny;
const indexOfStr = std.mem.indexOfPosLinear;
const lastIndexOf = std.mem.lastIndexOfScalar;
const lastIndexOfAny = std.mem.lastIndexOfAny;
const lastIndexOfStr = std.mem.lastIndexOfLinear;
const trim = std.mem.trim;
const sliceMin = std.mem.min;
const sliceMax = std.mem.max;

const parseInt = std.fmt.parseInt;
const parseFloat = std.fmt.parseFloat;

const print = std.debug.print;
const assert = std.debug.assert;

const sort = std.sort.block;
const asc = std.sort.asc;
const desc = std.sort.desc;

// Generated from template/template.zig.
// Run `zig build generate` to update.
// Only unmodified days will be updated.

// function test1(input) {
//     let sum = 0;
//     for (const line of input.split("\n")) {
//         let first = "";
//         let last = "";
//         for (const char of line) {
//             if (numbersAsNumericals.includes(char)) {
//                 if (first !== "") last = char;
//                 else {
//                     first = char;
//                     last = char;
//                 }
//             }
//         }
//
//         sum += parseInt(first + last, 10);
//     }
//     console.log(sum);
// }
//
// const numbersAsNumericals = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
// const numbersAsWords = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
//
// function test2(input) {
//     let sum = 0;
//     for (const line of input.split("\n")) {
//         let first = "";
//         let last = "";
//         let index = 0;
//         for (const char of line.trim()) {
//             if (numbersAsNumericals.includes(char)) {
//                 if (first !== "") last = char;
//                 else {
//                     first = char;
//                     last = char;
//                 }
//             } else {
//                 const remainingLine = line.slice(index);
//                 for (const [idx, word] of numbersAsWords.entries()) {
//                     if (remainingLine.startsWith(word)) {
//                         if (first !== "") last = `${idx}`;
//                         else {
//                             first = `${idx}`;
//                             last = `${idx}`;
//                         }
//                         break;
//                     }
//                 }
//             }
//             index += 1;
//         }
//
//         const result = parseInt(first + last, 10);
//         console.log(`Parsing ${first} and ${last} as ${result}, full line: ${line}`);
//         sum += result;
//     }
//     console.log(sum);
// }
