//
//  MainView.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 28/01/24.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    @StateObject private var jokeVM = JokeVM()
    
    @State private var showPunchline: Bool = false
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    @State private var soundNumber = 4
    
    let totalSounds = 25
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        Text("Setup:")
                            .foregroundStyle(.white)
                            .font(.custom("PermanentMarker-Regular", size: 30))
                        
                        // MARK: - SETUP
                        Text(jokeVM.joke?.setup ?? Constants.DefaultValues.noJokes)
                            .foregroundStyle(.white)
                            .fontWeight(.light)
                            .italic()
                            .padding(.horizontal)
                    }
                    .offset(y: moveDownward ? -218 : -300)
                    
                    // MARK: - PUNCHLINE
                    Group {
                        if showPunchline {
                            Text(jokeVM.joke?.punchline ?? Constants.DefaultValues.defaultPunchline)
                        }
                    }
                    .foregroundStyle(.white)
                    .font(.custom("PermanentMarker-Regular", size: 35))
                    .multilineTextAlignment(.center)
                    .lineLimit(5)
                    .minimumScaleFactor(0.5)
                    
                    // MARK: - TRIGGER
                    Group {
                        Button {
                            performPunchlineAction()
                        } label: {
                            punchlineLabel
                        }
                        .buttonStyle(PunchlineButtonStyle())
                    }
                    .offset(y: moveUpward ? 210 : 300)
                    
                }
                .navigationTitle(Constants.DefaultValues.viewTitles)
                .frame(width: 335, height: 545)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.color07, Color.color08]), startPoint: .top, endPoint: .bottom)
                )
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .opacity(fadeIn ? 1.0 : 0.0)
                .onAppear {
                    withAnimation(.linear(duration: 1.2)) {
                        self.fadeIn.toggle()
                    }
                    
                    withAnimation(.linear(duration: 0.6)) {
                        self.moveDownward.toggle()
                        self.moveUpward.toggle()
                    }
                }
                .task {
                    // await jokeVM.fetchJoke(ofType: jokeVM.selectedJokeType)
                    await jokeVM.fetchJoke()
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            Task {
                                playSingleSound(sound: "sound-chime", type: "mp3")
                                await JokeFetcher.fetchNewJoke(jokeVM: jokeVM)
                                showPunchline = false
                            }
                        } label: {
                            Image(systemName: "arrow.clockwise")
                                .foregroundStyle(.black)
                        }
                    }
                }
            }
            
            JokeTypePicker(jokeTypeVM: jokeVM)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    MainView()
}

// MARK: - EXTENSION
extension MainView {
    func performPunchlineAction() {
        playSound(soundName: "\(soundNumber)")
        soundNumber += 1
        if soundNumber > totalSounds {
            soundNumber = 0
        }
        showPunchline.toggle()
        print("Now playing sound number: \(soundNumber)")
    }
    
    private var punchlineLabel: some View {
        HStack {
            Text("Punchline".uppercased())
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            
            Image(systemName: "arrow.up.circle")
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }
    }
}
