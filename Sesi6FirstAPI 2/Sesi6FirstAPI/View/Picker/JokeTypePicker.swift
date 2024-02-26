//
//  JokeTypePicker.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 28/01/24.
//

import SwiftUI

struct JokeTypePicker: View {
    @ObservedObject var jokeTypeVM: JokeVM
    
    var body: some View {
        Picker("Select type", selection: $jokeTypeVM.selectedJokeType) {
            ForEach(jokeTypeVM.jokeTypes) { type in
                Text(type.rawValue.capitalized)
                    .tag(type)
            }
        }
    }
}

#Preview {
    let sampleJoke = JokeVM()
    return JokeTypePicker(jokeTypeVM: sampleJoke)
}
