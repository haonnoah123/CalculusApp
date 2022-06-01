//
//  Problem.swift
//  CalculusApp
//
//  Created by 90309333 on 5/16/22.
//

import Foundation
import SwiftUI

struct Problem: Decodable, Hashable {
    var Question: String
    var QuestionImage: String
    var Answer1: String
    var Answer2: String
    var Answer3: String
    var Answer4: String
    var CorrectAnswer: Int
}
