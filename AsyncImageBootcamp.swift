/*
    AsyncImageBootcamp.swift
*/

import SwiftUI

struct AsyncImageBootcamp: View {

    let url = URL(string: "https://picsum.photos/200")

    var body: some View {

        // You will not be able to change size of the photo you downloading
        AsyncImage(url: url)
            .frame(width:100, height:100)

        
        // Here is possibility to resize, because we make Image out of AsyncImage
        AsyncImage(url: url, content: { returnedImage in
            returnedImage
                .resizable()
                .scaleToFit()
                .frame(width:100, height:100)
                .cornerRadius(20)
        }, paceholder: {
            ProgressView()
        })
            .frame(width:100, height:100)

        AsyncImage(url:url, content: {phase in
            switch phase {
            case .empty:
                ProgressView()

            case .success(let image):
                image
                    .resizable()
                    .scaleToFit()
                    .frame(width:100, height:100)
                    .cornerRadius(20)

            case .failure(let error):
                Image(systemName: "questionmark") 
                    .font(.headline)
                
            default:
                break
            }
        })
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
