/*
 
Function: Text(string)

The string parameter in the Text function has its own modifiers.
    .uppercased()
    .lowercased()
    .capitalized()
 
*/

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            // M O D E F I E R S

                .font()
                /* 
                    Text.font(font: Font?)

                    Gives you to choose a font size provided by the system. You have:
                        .largeTitle
                        .title
                        .title2
                        .title3
                        .headline
                        .subheadline
                        .body
                        .callout
                        .footnote
                        .caption
                        .caption2
                */
                

                .fontWeight(.bold)
                /*
                    Text.fontWeight(weight: Font.Weight)

                    Gives you ability to choose how bold or thin your text will be. You have:
                        .black
                        .heavy
                        .semibold
                        .bold
                        .medium
                        .regular
                        .thin
                        .light
                        .ultraLight
                */


                .underline(true, color: Color.accentColor)
                /*
                    Text.underline()

                    Adds an underline below the text. You have 2 function overloadings:
                        .underline()
                        .underline(bool?, Color?)
                */
                

                .strikethrough(true, color: Color.accentColor)
                /*
                    Text.strikethrough()

                    Adds a strikethrough above the text. Just like underline it has 2 function overloadings:
                        .strikethrough()
                        .strikethrough(bool? , Color?)
                */
                

                .font(.system(size: 24, weight: .semibold, design: .serif))
                /* 
                    Text.font(.system())

                    Another, more detailed, way of setting up the font. Here we set the size, weight and design of the font.
                    .system has 4 different function overloadings:

                        .system(style: Font.TextStyle) — uses excect same fontstyle options as .font
                        .system(size: CGFloat) — number you wish your text to be displayed
                        .system(style: Font.TextStyle, design: Font.Design)
                        .system(size: CGFloat, weight: Font.Weight, design: Font.Design)

                    Font.Design has this options:
                        .default
                        .serif
                        .monospased
                        .rounded
                */


                .baselineOffset(10.0)
                /*
                    Text.baselineOffset(baselineOffset: CGFloat)

                    This modifier moves the baseline of the text up or down by the specified amount. Positive values raise the baseline up, when negatives, moved it down.
                */


                .multilineTextAlignment(.center)
                /*
                    Text.multilineTextAlignment(alighment: TextAlighnment)

                    This modifier is only available when working with multiline texts. It sets how the lines within the text should be aligned together.

                    There are 3 types of TextAlignment:
                        .leading — the start of each line is at the start of the container. (left)
                        .center — all the lines starts at the middle of the container.
                        .trailing — the end of each line is at the end of the container. (right)
                */


                .kerning(10)
                /*
                    Text.kerning(kerning: CGFloat)

                    This property helps control how the amount of space between the letters.
                    Positive values specify more space between characters, while negative numbers reduce the spacing.
                */


                .foregroundColor(.blue)
                /*
                    Text.foregroundColor(color: Color?)

                    This property simply sets the color for the text.
                */


                .frame(width: 200, height: 100, alignment: .center)
                /*
                    Text.frame(width: CGFloat?, height: CGFloat?, allignment: Alignment)

                    This property allows you to set a frame for your text so it will fit inside that frame.
                    Alignment has 9 options:
                        .bottom
                        .top
                        .leading
                        .trailing
                        .center
                        .bottomLeading
                        .bottomTrailing
                        .topLeading
                        .topTrailing

                    If the text is longer then set width and hight of the frame — SwiftUI will cut the rest of the text off by adding "...". But you can use next property to change the font size automatically to fit it inside of the frame.  
                */


                .minimumScaleFactor(0.1)
                /*
                    Text.minimumScaleFactor(factor: CGFloat)

                    It is basicly a procent of the font size. If minimum scale factor is 0.1 — means that we allow our font to scale down about 10% of the actual font size.
                */
        }
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
