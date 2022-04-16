//
//  Home_Page.swift
//  Covid-19 Info
//
//  Created by Sky Lock on 16/4/2022.
//

import SwiftUI

func getcasedata() -> String {
  /*  let url = "https://api.data.gov.hk/v2/filter?q={"resource":"http://www.chp.gov/.hk/files/misc/latest_situation_of_reported_cases_covid_19_eng.csv","section":1,"format":"json"}" */
    let dateformatter = DateFormatter();
    dateformatter.dateFormat = "dd/MM/YYYY"
    let date = dateformatter.string(from: Date())
    if let url = URL(""){
        URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let error = Error {
            return "Status code: \(response.statusCode)"
           }
        }
        }else if let response = response as? HTTPURLResponse,let data = data {
            print("Status code: \(response.statusCode)")
            let decoder = JSONDecoder()
            if let weatherData = try? decoder.decode(CurrentWeatherData.self, from: data)
}

struct casedata:Decodable{
    var cases: String
}

struct Home_Page: View {
    var body: some View{
        VStack{
            Text("HK Covid-19 Info")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Image("Home")
            Text(getcasedata())
        }
    }
  }

struct Home_page_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Home_Page()
        }
    }
}
