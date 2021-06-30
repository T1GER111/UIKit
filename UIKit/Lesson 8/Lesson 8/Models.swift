//
//  Models.swift
//  Lesson 8
//
//  Created by T1GER on 30.06.2021.
//

import Foundation

struct Marka {
    var id: Int
    var name: String
}

struct Model {
    var id: Int
    var markaId: Int
    var name: String
}

class ModelData {
    
    var marks = [Marka]()
    var models = [Model]()
    var modelsByMark = [Model]()
    
    init() {
        setupData()
    }
    
    func setupData() {
    
    let markaOne = Marka(id: 1, name: "Обзор")
    let markaTwo = Marka(id: 2, name: "Защита от угона")
    let markaThree = Marka(id: 3, name: "Мультимедия")
    let markaFour = Marka(id: 4, name: "Салон")
    let markaFive = Marka(id: 5, name: "Комфорт")
    let markaSix = Marka(id: 6, name: "Безопасность")
    let markaSeven = Marka(id: 7, name: "Элементы экстерьера")
    let markaEight = Marka(id: 8, name: "Прочее")
        
        marks.append(markaOne)
        marks.append(markaTwo)
        marks.append(markaThree)
        marks.append(markaFour)
        marks.append(markaFive)
        marks.append(markaSix)
        marks.append(markaSeven)
        marks.append(markaEight)

        
        let obzorOne = Model(id: 1, markaId: 1, name: "Дневные ходовые огни")
        let obzorTwo = Model(id: 2, markaId: 1, name: "Автоматический корректор фар")
        let obzorThree = Model(id: 3, markaId: 1, name: "Система адаптивного освещения")
        let obzorFour = Model(id: 4, markaId: 1, name: "Система управления дальним светом")
        let obzorFive = Model(id: 5, markaId: 1, name: "Датчик дождя")
        let obzorSix = Model(id: 6, markaId: 1, name: "Датчик света")
        let obzorSeven = Model(id: 7, markaId: 1, name: "Лазерные фары")
        let obzorEight = Model(id: 8, markaId: 1, name: "Электрообогрев форсунок стеклоомывателей")

        models.append(obzorOne)
        models.append(obzorTwo)
        models.append(obzorThree)
        models.append(obzorFour)
        models.append(obzorFive)
        models.append(obzorSix)
        models.append(obzorSeven)
        models.append(obzorEight)

        
        let zashitaOtUgonaOne = Model(id: 1, markaId: 2, name: "Центральный замок")
        let zashitaOtUgonaTwo = Model(id: 2, markaId: 2, name: "Иммобилайзер")
        let zashitaOtUgonaThree = Model(id: 3, markaId: 2, name: "Сигнализация")

        
        models.append(zashitaOtUgonaOne)
        models.append(zashitaOtUgonaTwo)
        models.append(zashitaOtUgonaThree)
        
        let multimediaOne = Model(id: 1, markaId: 3, name: "Bluetooth")
        let multimediaTwo = Model(id: 2, markaId: 3, name: "USB")
        let multimediaThree = Model(id: 3, markaId: 3, name: "Навигационная система")
        let multimediaFour = Model(id: 4, markaId: 3, name: "Розетка 12V")
        let multimediaFive = Model(id: 5, markaId: 3, name: "Голосовое управление")
        let multimediaSix = Model(id: 6, markaId: 3, name: "CarPlay")
        let multimediaSeven = Model(id: 7, markaId: 3, name: "Беспроводная зарядка для смартфона")
        let multimediaEight = Model(id: 8, markaId: 3, name: "Аудиоподготовка")

        models.append(multimediaOne)
        models.append(multimediaTwo)
        models.append(multimediaThree)
        models.append(multimediaFour)
        models.append(multimediaFive)
        models.append(multimediaSix)
        models.append(multimediaSeven)
        models.append(multimediaEight)
        
        let salonOne = Model(id: 1, markaId: 4, name: "Обогрев рулевого колеса")
        let salonTwo = Model(id: 2, markaId: 4, name: "Отделка кожей рулевого колеса")
        let salonThree = Model(id: 3, markaId: 4, name: "Отделка кожей рычага КПП")
        let salonFour = Model(id: 4, markaId: 4, name: "Передний центральный подлокотник")
        let salonFive = Model(id: 5, markaId: 4, name: "Спортивные передние сиденья")
        let salonSix = Model(id: 6, markaId: 4, name: "Отделка потолка чёрного цвета")
        let salonSeven = Model(id: 7, markaId: 4, name: "Третий задний подголовник")
        let salonEight = Model(id: 8, markaId: 4, name: "Складывающееся заднее сиденье")
        let salonNine = Model(id: 9, markaId: 4, name: "Декоративная подсветка салона")
        let salonTen = Model(id: 10, markaId: 4, name: "Декоративные накладки на педали")
        let salonEleven = Model(id: 11, markaId: 4, name: "Накладки на пороги")
        let salonTwelve = Model(id: 12, markaId: 4, name: "Кожа (Материал салона)")
        let salonThirty = Model(id: 13, markaId: 4, name: "Регулировка передних сидений по высоте")
        let salonFourty = Model(id: 14, markaId: 4, name: "Электрорегулировка передних сидений")
        let salonFifty = Model(id: 15, markaId: 4, name: "Подогрев передних сидений")
        let salonSixty = Model(id: 16, markaId: 4, name: "Тёмный салон")
        let salonSeventy = Model(id: 17, markaId: 4, name: "Память передних сидений")
        let salonEighty = Model(id: 18, markaId: 4, name: "Вентиляция передних сидений")
        
        
        models.append(salonOne)
        models.append(salonTwo)
        models.append(salonThree)
        models.append(salonFour)
        models.append(salonFive)
        models.append(salonSix)
        models.append(salonSeven)
        models.append(salonEight)
        models.append(salonNine)
        models.append(salonTen)
        models.append(salonEleven)
        models.append(salonTwelve)
        models.append(salonThirty)
        models.append(salonFourty)
        models.append(salonFifty)
        models.append(salonSixty)
        models.append(salonSeventy)
        models.append(salonEighty)
        
        let comfortOne = Model(id: 1, markaId: 5, name: "Бортовой компьютер")
        let comfortTwo = Model(id: 2, markaId: 5, name: "Система доступа без ключа")
        let comfortThree = Model(id: 3, markaId: 5, name: "Электропривод зеркал")
        let comfortFour = Model(id: 4, markaId: 5, name: "Электроскладывание зеркал")
        let comfortFive = Model(id: 5, markaId: 5, name: "Мультифункциональное рулевое колесо")
        let comfortSix = Model(id: 6, markaId: 5, name: "Электронная приборная панель")
        let comfortSeven = Model(id: 7, markaId: 5, name: "Проекционный дисплей")
        let comfortEight = Model(id: 8, markaId: 5, name: "Запуск двигателя с кнопки")
        let comfortNine = Model(id: 9, markaId: 5, name: "Система «старт-стоп»")
        let comfortTen = Model(id: 10, markaId: 5, name: "Электропривод крышки багажника")
        let comfortEleven = Model(id: 11, markaId: 5, name: "Открытие багажника без помощи рук")
        let comfortTwelve = Model(id: 12, markaId: 5, name: "Подрулевые лепестки переключения передач")
        let comfortThirty = Model(id: 13, markaId: 5, name: "Доводчик дверей")
        let comfortFourty = Model(id: 14, markaId: 5, name: "Прикуриватель и пепельница")
        let comfortFifty = Model(id: 15, markaId: 5, name: "Электростеклоподъёмники передние")
        let comfortSixty = Model(id: 16, markaId: 5, name: "Электростеклоподъёмники задние")
        let comfortSeventy = Model(id: 17, markaId: 5, name: "Климат-контроль 2-зонный")
        let comfortEighty = Model(id: 18, markaId: 5, name: "Активный усилитель руля")
        let comfortNinety = Model(id: 19, markaId: 5, name: "Регулировка руля по высоте")
        let comfortTwenty = Model(id: 20, markaId: 5, name: "Регулировка руля по вылету")
        let comfortTwentyOne = Model(id: 21, markaId: 5, name: "Электрорегулировка руля")
        let comfortTwentyTwo = Model(id: 22, markaId: 5, name: "Рулевая колонка с памятью положения")
        let comfortTwentyThree = Model(id: 23, markaId: 5, name: "Круиз-контроль")
        let comfortTwentyFour = Model(id: 24, markaId: 5, name: "Парктроник передний")
        let comfortTwentyFive = Model(id: 25, markaId: 5, name: "Парктроник задний")
        let comfortTwentySix = Model(id: 26, markaId: 5, name: "Система автоматической парковки")
        let comfortTwentySeven = Model(id: 27, markaId: 5, name: "Система выбора режима движения")
        let comfortTwentyEight = Model(id: 28, markaId: 5, name: "Камера 360°")
        
        models.append(comfortOne)
        models.append(comfortTwo)
        models.append(comfortThree)
        models.append(comfortFour)
        models.append(comfortFive)
        models.append(comfortSix)
        models.append(comfortSeven)
        models.append(comfortEight)
        models.append(comfortNine)
        models.append(comfortTen)
        models.append(comfortEleven)
        models.append(comfortTwelve)
        models.append(comfortThirty)
        models.append(comfortFourty)
        models.append(comfortFifty)
        models.append(comfortSixty)
        models.append(comfortSeventy)
        models.append(comfortEighty)
        models.append(comfortNinety)
        models.append(comfortTwenty)
        models.append(comfortTwentyOne)
        models.append(comfortTwentyTwo)
        models.append(comfortTwentyThree)
        models.append(comfortTwentyFour)
        models.append(comfortTwentyFive)
        models.append(comfortTwentySix)
        models.append(comfortTwentySeven)
        models.append(comfortTwentyEight)
        
        let bezopasnostOne = Model(id: 1, markaId: 6, name: "Антиблокировочная система (ABS)")
        let bezopasnostTwo = Model(id: 2, markaId: 6, name: "Система стабилизации (ESP)")
        let bezopasnostThree = Model(id: 3, markaId: 6, name: "Блокировка замков задних дверей")
        let bezopasnostFour = Model(id: 4, markaId: 6, name: "ЭРА-ГЛОНАСС")
        let bezopasnostFive = Model(id: 5, markaId: 6, name: "Подушка безопасности водителя")
        let bezopasnostSix = Model(id: 6, markaId: 6, name: "Подушка безопасности пассажира")
        let bezopasnostSeven = Model(id: 7, markaId: 6, name: "Подушки безопасности боковые")
        let bezopasnostEight = Model(id: 8, markaId: 6, name: "Подушки безопасности оконные (шторки)")
        let bezopasnostNine = Model(id: 9, markaId: 6, name: "Подушка безопасности для защиты коленей водителя")
        let bezopasnostTen = Model(id: 10, markaId: 6, name: "Крепление детского кресла (задний ряд) ISOFIX")
        let bezopasnostEleven = Model(id: 11, markaId: 6, name: "Антипробуксовочная система (ASR)")
        let bezopasnostTwelve = Model(id: 12, markaId: 6, name: "Система помощи при торможении (BAS, EBD)")
        let bezopasnostThirty = Model(id: 13, markaId: 6, name: "Система помощи при старте в гору (HSA)")
        let bezopasnostFourty = Model(id: 14, markaId: 6, name: "Система помощи при спуске")
        let bezopasnostFifty = Model(id: 15, markaId: 6, name: "Система предотвращения столкновения")
        let bezopasnostSixty = Model(id: 16, markaId: 6, name: "Система контроля слепых зон")
        let bezopasnostSeventy = Model(id: 17, markaId: 6, name: "Система контроля за полосой движения")
        let bezopasnostEighty = Model(id: 18, markaId: 6, name: "Активный усилитель руля")
        let bezopasnostNinety = Model(id: 19, markaId: 6, name: "Датчик усталости водителя")
        let bezopasnostTwenty = Model(id: 20, markaId: 6, name: "Система распознавания дорожных знаков")
        
        models.append(bezopasnostOne)
        models.append(bezopasnostTwo)
        models.append(bezopasnostThree)
        models.append(bezopasnostFour)
        models.append(bezopasnostFive)
        models.append(bezopasnostSix)
        models.append(bezopasnostSeven)
        models.append(bezopasnostEight)
        models.append(bezopasnostNine)
        models.append(bezopasnostTen)
        models.append(bezopasnostEleven)
        models.append(bezopasnostTwelve)
        models.append(bezopasnostThirty)
        models.append(bezopasnostFourty)
        models.append(bezopasnostFifty)
        models.append(bezopasnostSixty)
        models.append(bezopasnostSeventy)
        models.append(bezopasnostEighty)
        models.append(bezopasnostNinety)
        models.append(bezopasnostTwenty)
        
        let exterierElementsOne = Model(id: 1, markaId: 7, name: "Легкосплавные диски")
        let exterierElementsTwo = Model(id: 2, markaId: 7, name: "Диски 20")

        models.append(exterierElementsOne)
        models.append(exterierElementsTwo)
        
        let anotherOne = Model(id: 1, markaId: 8, name: "Активная подвеска")
        let anotherTwo = Model(id: 2, markaId: 8, name: "Спортивная подвеска")
        
        models.append(anotherOne)
        models.append(anotherTwo)
        
        self.modelsByMark = getModels(markaId: marks.first!.id)

    }
    func getModels(markaId: Int) -> [Model] {
        let models = self.models.filter { (m) in
            m.markaId == markaId
        }
        return models
    }
}

