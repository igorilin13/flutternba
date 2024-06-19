import { initializeApp } from "firebase-admin/app";
initializeApp();

import { getBoxScore } from "./data-copy/boxscores/boxscores";

exports.dataCopy = require("./data-copy/data-copy");
exports.getBoxScore = getBoxScore;
