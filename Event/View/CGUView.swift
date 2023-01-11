//
//  CGUView.swift
//  Event
//
//  Created by user231561 on 1/11/23.
//

import SwiftUI

struct CGUView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 60) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("ARTICLE 1 – OBJET DES CONDITIONS GENERALES D’UTILISATION")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 10)
                        Text("Les présentes conditions générales d’utilisation (ci-après « CGU ») ont pour objet de définir les règles d’utilisation de l’application mobile \"EventApp\" édité par le groue \"Les BG du 94\".")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                        Text("En installant l’Application sur votre terminal et/ou en accédant à l’Application, vous acceptez sans réserve l’intégralité des présentes CGU et vous engagez à respecter les obligations à votre charge. Dans le cas où vous n’accepteriez pas les CGU ou auriez des réserves, merci de ne pas utiliser l’Application.")
                        
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        Text("ARTICLE 2 – OBJET ET FONCTIONNALITES DE L’APPLICATION")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 10)
                        Text("L’Application vous permet d'explorer les évènements à venir et faire des recherches parmis ceux-là. Ces fonctionnalités peuvent être enrichies ou modifiées à tout moment par \"Les BG du 94\" sans que sa responsabilité ne puisse être engagée à ce titre.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        Text("ARTICLE 3 - ACCES A L’APPLICATION")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 10)
                        Text("Pour accéder à l’Application, vous devez posséder un terminal mobile et un accès au réseau Internet.\nL’Application est téléchargeable gratuitement depuis les plateformes : aucune puisque c'est un TP.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        Text("ARTICLE 4 - CONTACT")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 10)
                        Text("Vous pouvez adresser vos questions ou remarques relatives aux présentes CGU à \"Les BG du 94\" en écrivant à l'adresse suivante: pierre-loup.guerrieri@efrei.net")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                    }
                }
                .padding(.all)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationTitle("CGU")
        }
    }
}

struct CGUView_Previews: PreviewProvider {
    static var previews: some View {
        CGUView()
    }
}
