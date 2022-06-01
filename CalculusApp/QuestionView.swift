//
//  QuestionView.swift
//  CalculusApp
//
//  Created by 90309333 on 5/16/22.
//

import SwiftUI

struct QuestionView: View {
    @State var problem: Problem
    @State var index = 0
    @State var colorButton1 = Color.blue
    @State var colorButton2 = Color.blue
    @State var colorButton3 = Color.blue
    @State var colorButton4 = Color.blue
    var body: some View {
        let problems = DataGetter().problems
        VStack(alignment: .leading) {
                HStack {
                    if problem.QuestionImage != "null" {
                        Image(problem.QuestionImage)
                        Text(problem.Question)
                            .font(.body)
                    } else {
                        Text(problem.Question)
                            .font(.title3)
                    }
                }
            Spacer().frame(height: 70)
            Button {
                if(problem.CorrectAnswer == 1 && index + 1 < problems.count) {
                        index+=1
                        problem = problems[index]
                        colorButton1 = Color.blue
                        colorButton2 = Color.blue
                        colorButton3 = Color.blue
                        colorButton4 = Color.blue
                    } else if (index + 1 >= problems.count) {
                        
                    } else {
                        colorButton1 = Color.red
                    }
                } label: {
                    Text(problem.Answer1).foregroundColor(colorButton1)
                }
            Spacer().frame(height: 60)
                Button {
                    if(problem.CorrectAnswer == 2 && index + 1 < problems.count) {
                        index+=1
                        problem = problems[index]
                        colorButton1 = Color.blue
                        colorButton2 = Color.blue
                        colorButton3 = Color.blue
                        colorButton4 = Color.blue
                    } else if (index + 1 >= problems.count) {
                        ContentView()
                    } else {
                        colorButton2 = Color.red
                    }
                } label: {
                    Text(problem.Answer2).foregroundColor(colorButton2)
                }
            Spacer().frame(height: 60)
                Button {
                    if(problem.CorrectAnswer == 3 && index + 1 < problems.count) {
                        index+=1
                        problem = problems[index]
                        colorButton1 = Color.blue
                        colorButton2 = Color.blue
                        colorButton3 = Color.blue
                        colorButton4 = Color.blue
                    } else if (index + 1 >= problems.count) {
                        ContentView()
                    } else {
                        colorButton3 = Color.red
                    }
                } label: {
                    Text(problem.Answer3).foregroundColor(colorButton3)
                }
            Spacer().frame(height: 60)
                Button {
                    if(problem.CorrectAnswer == 4 && index + 1 < problems.count) {
                        index+=1
                        problem = problems[index]
                        colorButton1 = Color.blue
                        colorButton2 = Color.blue
                        colorButton3 = Color.blue
                        colorButton4 = Color.blue
                    } else if (index + 1 >= problems.count) {
                        ContentView()
                    } else {
                        colorButton4 = Color.red
                    }
                } label: {
                    Text(problem.Answer4).foregroundColor(colorButton4)
                }
            Spacer().frame(height: 30)
        }.font(.title3).padding()
            
    }
}

struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 100, height: 100)
            .foregroundColor(Color.black)
            .background(Color.red)
            .clipShape(Circle())
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(problem: DataGetter().problems[0])
    }
}
