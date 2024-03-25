import SwiftUI

struct OnboardingView: View {

    // Onboarding State
    /*
    0 - Welcome Sreen
    1 - Add name
    2 - add age
    3 - add gender
    */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )

    // Onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String? = nil

    // For Alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false

    // For AppStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        ZStack
        {
            // Content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                
                case 1:
                    addNameSection
                        .transition(transition)

                case 2:
                    addAgeSection
                        .transition(transition)

                case 3:
                    addGenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius:25)
                        .foregroundColor(.green)
                }
            }

            // Buttons
            VStack
            {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }

    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().background(Color.purple)
    }
}

// MARK: COMPONENTS
extension OnboardingView {

    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" :
            onboardingState == 3 ? "FINISH" : "NEXT"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                hadnleNextButtonPressed()
            }
    }

    private var welcomeSection: some View {
        VStack (spacing: 40) {
            Spacer()

            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaleToFit()
                .frame(width:200, height:200)
                .foregroundColor(.white)
            
            Text("Find Your Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsul(style: .continuous)  
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )

            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)

            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }

    private var addNameSection: some View{
        VStack (spacing: 20) {
            Spacer()
            
            Text("What's Your Name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)

            Spacer()
            Spacer()
        }
        .padding(30)
    }

    private var addAgeSection Section: some View {
        VStack (spacing: 20) {
            Spacer()
            
            Text("What's Your Age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Slider(value: $age, in:18...100, step: 1, onEditingChanged:)
                .accentColor(.white)

            Text((String(format: "%.0f", age))).font(.largeTitle).fontWeight(.semibold)
                .foregroundColor(.white)

            Spacer()
            Spacer()
        }
        .padding(30)
    }

    private var addGenderSection: some View {
        VStack (spacing: 20) {
            Spacer()
            
            Text("What's Your Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Picker(selection:$gender, label: 
                Text(gender ?? "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth . infinity)
                    .cornerRadius(10)
                , content: {
                
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
                Text("Other").tag("Other")
                Text("Prefer not to say").tag("NotToSay")
            })
            .pickerStyle(MenuPickerStyle())

            Spacer()
            Spacer()
        }
    }
}

// MARK: FUNCTIONS
extension OnboardingView {

    func hadnleNextButtonPressed() {

        // Check Inputs
        switch onboardingState {
            case 1:
                guard name.count >= 3 else {
                    showAlert(title: "Your name must be at least 3 charasters long!")
                    return
                }

            case 3:
                guard gender else {
                    showAlert(title: "Please select a gender!")
                    return
                }

            default:
                break
        }


        // Go To Next Section
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }

    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }

    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}