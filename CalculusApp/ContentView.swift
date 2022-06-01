//
//  ContentView.swift
//  CalculusApp
//
//  Created by 90309333 on 5/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let SeriesProblems = DataGetter().problems
        let problemTypes: [ProblemTypes] = [ProblemTypes(id: ObjectIdentifier(AnyObject.self), type: "Series", Problems: SeriesProblems)]
        NavigationView {
            List(problemTypes) { problemtype in
                NavigationLink(problemtype.type) {
                    QuestionView(problem: problemtype.Problems[0])
                }
            }
        }
       // QuestionView(problem: problems[0])
        
    }
}

struct ProblemTypes: Identifiable {
    var id: ObjectIdentifier
    var type: String
    var Problems: [Problem]
}
                                                         

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
