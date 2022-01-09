//
//  CocktailModel.swift
//  Cocktails
//
//  Created by Васильева Ольга on 06.01.2022.
//

import Foundation

struct Cocktail {
    let title: String
    let method: String
    let garnish: String
    let description: String
    let ingridients: [(Ingridient, Double)]
}

struct Ingridient {
    let title: String
    let description: String
}

extension Cocktail {
    static func getCocktailsList() -> [Cocktail] {
        
        let gin = Ingridient(title: "Beefeater gin", description: "Beefeater, состоящий из воды и спирта, имеет крепость 40 %")
        let dryVermut = Ingridient(title: "Martini Extra Dry", description: "Крепость: 16%; Вкус: мягкий, почти солоноватый, напоминает белое сухое вино")
        let tequila = Ingridient(title: "Olmeca Gold", description: "Традиционно градус составляет 38%, cодержит сок агавы не больше 51%")
        let cointreau = Ingridient(title: "Cointreau", description: "Крепость оригинального Cointreau 40% об., содержание сахара 25 г/100 мл.")
        let limeJuice = Ingridient(title: "Lime", description: "100% juce.")
        let rum = Ingridient(title: "Bacardi", description: "Ром насыщенного золотого цвета крепостью 75,5%.")
        let sugar = Ingridient(title: "Sugar", description: "Водорастворимые углеводы со сладким вкусом, альтернативное название сахарозы.")
        let campari = Ingridient(title: "Campari", description: "Uорький ликер (биттер) красного цвета на основе ароматических трав и фруктов.")
        let sweetRedVermut = Ingridient(title: "Martini Rosso", description: "Крепленный винный аперитив, ароматизированный с помощью трав, специй, цветов или кореньев.")
        let pineappleJuice = Ingridient(title: "Pineapple", description: "100% juce.")
        let coconutJuice = Ingridient(title: "Coconut", description: "100% juce.")
        let vodka = Ingridient(title: "Absolut", description: "Этот супер-премиальный спиртной напиток крепостью 40-50° отличается деликатным и мягким вкусом.")
        let tomatoJuice = Ingridient(title: "Tomato juice", description: "100% juce.")
        let carbonatedWater = Ingridient(title: "Water", description: "Напиток, состоящий из обычной или минеральной воды, которую насытили углекислым газом.")
        let mint = Ingridient(title: "Mint", description: "Травянистое растение; вид рода Мята семейства Яснотковые.")
        
        
        let list = [
            Cocktail(title: "Dry Martini",
                     method: "Налейте все ингредиенты в стакан для смешивания с кубиками льда. Хорошо перемешайте. Процедить в охлажденный бокал для коктейля мартини",
                     garnish: "Выдавите масло из лимонной цедры на напиток или украсьте зелеными оливками, если хотите.",
                     description: "В Европу привычку смешивать сладкую Coca-Cola с виски привезли The Beatles. После американского турне в начале шестидесятых музыканты пили этот коктейль без названия в барах или смешивали его сами. Армия битломанов не осталась безучастной, и мода заполонила Европу со скоростью эпидемии.",
                     ingridients: [(gin, 45), (dryVermut, 15)]),
            Cocktail(title: "Margarita",
                     method: "Добавьте все ингредиенты в шейкер со льдом. Встряхните и процедите в охлажденный бокал для коктейля",
                     garnish: "Посолить край бокала.",
                     description: "Один из самых романтичных коктейлей, дело и в названии, и во внешнем виде: изящный бокал на тонкой ножке, тонкий «снег» на кромке бокала, красивый цвет.",
                     ingridients: [(tequila, 50), (cointreau, 20), (limeJuice, 15)]),
            Cocktail(title: "Daiquiri",
                     method: "В шейкер для коктейлей добавьте все ингредиенты. Хорошо перемешайте, чтобы сахар растворился. Добавьте лед и встряхните. Процедить в охлажденный бокал для коктейля.",
                     garnish: "N/A",
                     description: "Напиток, в который были влюблены президент США Дж. Кеннеди и всемирно известный писатель Э. Хемингуэй. Он обладает свободным, тропическим характером.",
                     ingridients: [(rum, 60), (sugar, 10), (limeJuice, 20)]),
            Cocktail(title: "Mojito",
                     method: "Смешайте мятные источники с сахаром и соком лайма. Добавьте немного содовой воды и наполните стакан льдом. Налейте ром и залейте содовой водой. Слегка перемешайте, чтобы задействовать все ингредиенты.",
                     garnish: "Украсить веточками мяты и ломтиком лайма.",
                     description: "Кубинский коктейль имеет прочные ассоциации с летом, его подают на всех жарких курортах.",
                     ingridients: [(rum, 45), (sugar, 2), (carbonatedWater, 1), (mint, 6)]),
            Cocktail(title: "Negroni",
                     method: "Налейте все ингредиенты прямо в охлажденный старомодный стакан, наполненный льдом, осторожно перемешайте.",
                     garnish: "Украсьте половинкой ломтика апельсина.",
                     description: "Коктейль был придуман графом Камилло Негрони, который попросил бармена Фоско Скарселли сделать более алкогольным его любимый коктейль «Американо», заменив содовую на джин.",
                     ingridients: [(gin, 30), (campari, 30), (sweetRedVermut, 30)]),
            Cocktail(title: "Maitai",
                     method: "Добавьте все ингредиенты в шейкер со льдом. Встряхните и налейте в стакан с двойным льдом или стакан для хайбола.",
                     garnish: "Украсьте копьем ананаса, листьями мяты и цедрой лайма.",
                     description: "Считается, что Mai Tai был изобретен в Республике Гаити, поскольку название напитка означает «неземной» или «прекрасный.",
                     ingridients: [(rum, 30), (cointreau, 15), (limeJuice, 30), (mint, 6)]),
            Cocktail(title: "Pinakolada",
                     method: "Добавьте все ингредиенты в шейкер со льдом. Встряхните и налейте в стакан с двойным льдом или стакан для хайбола.",
                     garnish: "Украсьте копьем ананаса",
                     description: "Экзотический вкус и алкоголь создают освежающий нежный тандем. Идеально подходит любителям сладких фруктовых напитков",
                     ingridients: [(rum, 50), (coconutJuice, 30), (pineappleJuice, 50)]),
            Cocktail(title: "Bloodymary",
                     method: "Аккуратно перемешайте все ингредиенты в стакане для смешивания со льдом, перелейте в стакан для льда.",
                     garnish: "По желанию подается со льдом, налейте в стакан для хайбола.",
                     description: "Версий относительно того, откуда пошел напиток, имеется множество, но наиболее интересной из них является та, что связана с именем Мэри Рид. Эта жестокая женщина-пират оставила свой след в истории, а ее жизнь даже послужила сюжетом для фильма.",
                     ingridients: [(vodka, 45), (tomatoJuice, 90)]),
            Cocktail(title: "Americano",
                     method: "Смешайте ингредиенты непосредственно в старомодном стакане, наполненном кубиками льда. Добавьте немного содовой воды. Осторожно перемешайте.",
                     garnish: "Украсить половинкой ломтика апельсина и лимонной цедрой.",
                     description: "Любимый напиток Джеймса Бонда покорил миллионы гурманов по всему миру. Особой популярностью аперитив пользуется в Италии и США.",
                     ingridients: [(sweetRedVermut, 30), (campari, 30)])
                        
        ]
        
        return list
    }
}
