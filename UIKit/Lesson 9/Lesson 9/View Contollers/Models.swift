//
//  Models.swift
//  Lesson 9
//
//  Created by T1GER on 01.07.2021.
//

import Foundation

struct Marka {
    let id: Int
    let name: String
}

struct Model {
    let id: Int
    let markaId: Int
    let name: String
}

class ModelData {

    var marks = [Marka]()
    var models = [Model]()
    var modelsByMark = [Model]()

    init() {
        setupData()
    }

    func setupData() {
        
        let marka1 = Marka(id: 1, name: "Москва")
        let marka2 = Marka(id: 2, name: "МО")
        
        marks.append(marka1)
        marks.append(marka2)

        let rayonOne = Model(id: 1, markaId: 1, name: "Центральный административный округ Москвы (ЦАО)")
        let rayonTwo = Model(id: 2, markaId: 1, name: "Северный административный округ Москвы(САО)")
        let rayonThree = Model(id: 3, markaId: 1, name: "Северо-Восточный административный округ Москвы(СВАО)")
        let rayonFour = Model(id: 4, markaId: 1, name: "Восточный административный округ Москвы (ВАО)")
        let rayonFive = Model(id: 5, markaId: 1, name: "Юго-Восточный административный округ Москвы (ЮВАО)")
        let rayonSix = Model(id: 6, markaId: 1, name: "Южный административный округ Москвы (ЮАО)")
        let rayonSeven = Model(id: 7, markaId: 1, name: "Юго-Западный административный округ Москвы (ЮЗАО)")
        let rayonEight = Model(id: 8, markaId: 1, name: "Западный административный округ Москвы (ЗАО)")
        let rayonNine = Model(id: 9, markaId: 1, name: "Северо-Западный административный округ Москвы (СЗАО)")
        let rayonTen = Model(id: 10, markaId: 1, name: "Зеленоградский административный округ Москвы (ЗелАО)")
        let rayonEleven = Model(id: 11, markaId: 1, name: "Троицкий административный округ Москвы (ТаАО)")
        let rayonTwelve = Model(id: 12, markaId: 1, name: "Новомосковский административный округ Москвы (НАО)")
       

        models.append(rayonOne)
        models.append(rayonTwo)
        models.append(rayonThree)
        models.append(rayonFour)
        models.append(rayonFive)
        models.append(rayonSix)
        models.append(rayonSeven)
        models.append(rayonEight)
        models.append(rayonNine)
        models.append(rayonTen)
        models.append(rayonEleven)
        models.append(rayonTwelve)

        let oblastOne = Model(id: 1, markaId: 2, name: "Волоколамский район")
        let oblastTwo = Model(id: 2, markaId: 2, name: "Воскресенский район")
        let oblastThree = Model(id: 3, markaId: 2, name: "Дмитровский район")
        let oblastFour = Model(id: 4, markaId: 2, name: "Егорьевский район")
        let oblastFive = Model(id: 5, markaId: 2, name: "Зарайский район")
        let oblastSix = Model(id: 6, markaId: 2, name: "Истринский район")
        let oblastSeven = Model(id: 7, markaId: 2, name: "Каширский район")
        let oblastEight = Model(id: 8, markaId: 2, name: "Клинский район")
        let oblastNine = Model(id: 9, markaId: 2, name: "Коломенский район")
        let oblastTen = Model(id: 10, markaId: 2, name: "Красногорский район")
        let oblastEleven = Model(id: 11, markaId: 2, name: "Ленинский район")
        let oblastTwelve = Model(id: 12, markaId: 2, name: "Лотошинский район")
        let oblastThirty = Model(id: 13, markaId: 2, name: "Луховицкий район")
        let oblastFourty = Model(id: 14, markaId: 2, name: "Люберецкий район")
        let oblastFifty = Model(id: 15, markaId: 2, name: "Можайский район")
        let oblastSixty = Model(id: 16, markaId: 2, name: "Мытищинский район")
        let oblastSeventy = Model(id: 17, markaId: 2, name: "Наро-Фоминский район")
        let oblastEighty = Model(id: 18, markaId: 2, name: "Ногинский район")
        let oblastNinety = Model(id: 19, markaId: 2, name: "Одинцовский район")
        let oblastTwenty = Model(id: 20, markaId: 2, name: "Озерский район")
        let oblastTwentyOne = Model(id: 21, markaId: 2, name: "Орехово-Зуевский район")
        let oblastTwentyTwo = Model(id: 22, markaId: 2, name: "Павлово-Посадский район")
        let oblastTwentyThree = Model(id: 23, markaId: 2, name: "Подольский район")
        let oblastTwentyFour = Model(id: 24, markaId: 2, name: "Пушкинский район")
        let oblastTwentyFive = Model(id: 25, markaId: 2, name: "Раменский район")
        let oblastTwentySix = Model(id: 26, markaId: 2, name: "Рузский район")
        let oblastTwentySeven = Model(id: 27, markaId: 2, name: "Сергиево-Посадский район")
        let oblastTwentyEight = Model(id: 28, markaId: 2, name: "Серебряно-Прудский район")
        let oblastTwentyNine = Model(id: 29, markaId: 2, name: "Серпуховский район")
        let oblastThirteen = Model(id: 30, markaId: 2, name: "Солнечногорский район")
        let oblastThirteenOne = Model(id: 31, markaId: 2, name: "Ступинский район")
        let oblastThirteenTwo = Model(id: 32, markaId: 2, name: "Талдомский район")
        let oblastThirteenThree = Model(id: 33, markaId: 2, name: "Чеховский район")
        let oblastThirteenFour = Model(id: 34, markaId: 2, name: "Шатурский район")
        let oblastThirteenFive = Model(id: 35, markaId: 2, name: "Шаховской район")
        let oblastThirteenSix = Model(id: 36, markaId: 2, name: "Щелковский район")
        

        models.append(oblastOne)
        models.append(oblastTwo)
        models.append(oblastThree)
        models.append(oblastFour)
        models.append(oblastFive)
        models.append(oblastSix)
        models.append(oblastSeven)
        models.append(oblastEight)
        models.append(oblastNine)
        models.append(oblastTen)
        models.append(oblastEleven)
        models.append(oblastTwelve)
        models.append(oblastThirty)
        models.append(oblastFourty)
        models.append(oblastFifty)
        models.append(oblastSixty)
        models.append(oblastSeventy)
        models.append(oblastEighty)
        models.append(oblastNinety)
        models.append(oblastTwenty)
        models.append(oblastTwentyOne)
        models.append(oblastTwentyTwo)
        models.append(oblastTwentyThree)
        models.append(oblastTwentyFour)
        models.append(oblastTwentyFive)
        models.append(oblastTwentySix)
        models.append(oblastTwentySeven)
        models.append(oblastTwentyEight)
        models.append(oblastTwentyNine)
        models.append(oblastThirteen)
        models.append(oblastThirteenOne)
        models.append(oblastThirteenTwo)
        models.append(oblastThirteenThree)
        models.append(oblastThirteenFour)
        models.append(oblastThirteenFive)
        models.append(oblastThirteenSix)

        self.modelsByMark = getModels(markaId: models.first!.id)

    }
    func getModels(markaId: Int) -> [Model] {
        let models = self.models.filter { (m) in
            m.markaId == markaId
        }
        return models
    }
}
