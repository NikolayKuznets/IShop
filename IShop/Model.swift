//
//  Model.swift
//  IShop
//
//  Created by Ник К on 05.02.2024.
//

import Foundation

struct Model: Identifiable {
    let id = UUID().uuidString
    
    let estimation: String
    let numberOfReviews: String
    let CountryAndCity: String
    
    let title: String
    var price: String
    let imageName: String
    
    let description: String
    
    let production: String
    let energyValueCcal100Gr: String
    let fats100Gr: String
    let protein100Gr: String
    let carbohydrates100Gr: String
    
    //отзывы
    let nameOfTheBuyer: String
    let dateOfReview: String
//        let ratingInTheReview: 4 звездочки из 5
    let review: String
    
    static let teas = [
        Model(estimation: "4.1",
              numberOfReviews: "19 отзывов",
              CountryAndCity: "Испания, Риоха",
              title: "Добавка \"Липа\" к чаю 200 г",
              price: "120",
              imageName: "IMG_6135",
              description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.",
              production: "Россия, Краснодарский край",
              energyValueCcal100Gr: "25 ккал, 105кДЖ",
              fats100Gr: "0.1 г",
              protein100Gr: "1.3 г",
              carbohydrates100Gr: "3.3 г",
              nameOfTheBuyer: "Александр В.",
              dateOfReview: "7 мая 2021",
              review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"
             )
    ]

    
//    static let reviews = [
//        ModelReview(nameOfTheBuyer: "Александр В.",
//                    dateOfReview: "7 мая 2021",
//                    review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
//        ModelReview(nameOfTheBuyer: "Александр В.",
//                    dateOfReview: "7 мая 2021",
//                    review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
//        ModelReview(nameOfTheBuyer: "Александр В.",
//                    dateOfReview: "7 мая 2021",
//                    review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
//    ]
}
