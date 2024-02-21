//
//  CardView.swift
//  IShop
//
//  Created by Ник К on 05.02.2024.
//

import SwiftUI

struct CardView: View {
    
    var item: Model
//    var item1: ModelReview
    
    @State private var selectedColorIndex = 0
    @State var stepperValue = 1 //первая версия степпера
    @State var count = 1 //вторая версия степпера
    @State var cost = 120 //может вынести в модель?
    
    var body: some View {
        NavigationStack {
            ScrollView() {
          
                VStack {
                    Divider()
                    Group {
                        VStack(alignment: .leading) {
                            ZStack() {
                                Image(item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("Цена по карте")
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .background(Color.green)
                                    .cornerRadius(5)
                                    .frame(width: 400, height: 400, alignment: .topLeading)
                                    .padding(5)
                            }
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text(item.estimation)
                                Divider()
                                    .frame(height: 20)
                                Text(item.numberOfReviews)
                                    .foregroundColor(.gray)
                                Spacer()
                                ZStack {
                                    Image(systemName: "rectangle.fill")
                                        .foregroundColor(.red)
                                        .font(.system(size: 40))
                                        .clipShape(CustomShape())
                                    Text("-5%")
                                        .foregroundColor(.white)
                                    
                                    //как сделать кастомную форму этому элементу?
                                        .clipShape(RoundedRectangle(cornerRadius: 40))
                                }
                            }
                            .padding()
                            
                            Text(item.title)
                                .font(.system(.title, design: .rounded))
                                .padding()
                            HStack {
                                HStack {
                                    Image("1F1EA-1F1F8_color")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .clipShape(Circle())
                                    
                                        //.clipShape(Circle()) // это не работает
                                    //как сделать эту картинку круглой?
                                }
                                .background(Color.yellow)
                                .cornerRadius(15)
                                Text(item.CountryAndCity)
                            }
                            .padding()
                            VStack(alignment: .leading) {
                                Text("Описание")
                                    .font(Font.headline.weight(.bold))
                                Text(item.description)
                            }
                            .padding()
                            VStack(alignment: .leading) {
                                Text("Основные характеристики")
                                    .font(Font.headline.weight(.bold))
                                HStack {
                                    Text("Производство")
                                    VStack {
//                                        Divider()
                                        Divider()
                                                .frame(minHeight: 5)
                                                .overlay(Color.blue.opacity(0.5))
                                    }
                                    Spacer()
                                    Text(item.production)
                                        .multilineTextAlignment(.trailing)
                                    // не работает. Почему?
                                }
                                HStack {
                                    Text("Энергетическая ценность, ккал/100 г")
                                        .lineLimit(nil)
                                    // почему не переносится строка
                                    VStack {
                                        Divider()
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [10, 5])))//это не работает
                                    }
                                    Spacer()
                                    Text(item.energyValueCcal100Gr)
                                }
                                HStack {
                                    Text("Жиры/100 г")
                                    VStack {
                                        Divider()
                                    }
                                    Spacer()
                                    Text(item.fats100Gr)
                                }
                                HStack {
                                    Text("Белки/100 г")
                                    VStack {
                                        Divider()
                                    }
                                    Spacer()
                                    Text(item.protein100Gr)
                                }
                                HStack {
                                    Text("Углеводы/100 г")
                                    VStack {
                                        Divider()
                                    }
                                    Spacer()
                                    Text(item.carbohydrates100Gr)
                                }
                            } //завершился блок "Основные характеристики"
                            .padding()
                            Text("Все характеристики")
                                .foregroundColor(.green)
                                .font(Font.headline.weight(.bold))
                                .padding()
                            HStack {
                                Text("Отзывы")
                                    .font(Font.title.weight(.bold))
                                Spacer()
                                Text ("Все 152")
                                    .font(Font.headline.weight(.bold))
                                    .foregroundColor(.green)
                            }
                            .padding()
                            //Отзывы
                            ScrollView(.horizontal, showsIndicators: false){
                                ZStack {
                                    HStack {
                                        VStack(alignment: .leading){
                                            Text("Александр В.")
                                            HStack{
                                                ForEach(0..<4) {_ in
                                                    Image(systemName: "star.fill")
                                                        .foregroundColor(.yellow)
                                                }
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.gray)
                                            }
                                            Text("7 мая 2021")
                                                .foregroundColor(.gray)
                                            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                                                
                                        }
                                        .padding()
                                        .background(Rectangle().fill(Color.white)
                                            .cornerRadius(16)
                                            .shadow(radius: 8))
                                            
                                        
                                        VStack(alignment: .leading){
                                            Text("Александр В.")
                                            HStack{
                                                ForEach(0..<4) {_ in
                                                    Image(systemName: "star.fill")
                                                        .foregroundColor(.yellow)
                                                }
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.gray)
                                            }
                                            Text("7 мая 2021")
                                                .foregroundColor(.gray)
                                            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                                                
                                        }
                                        .padding()
                                        .background(Rectangle().fill(Color.white)
                                            .cornerRadius(16)
                                            .shadow(radius: 8))

                                        VStack(alignment: .leading){
                                            Text("Александр В.")
                                            HStack{
                                                ForEach(0..<4) {_ in
                                                    Image(systemName: "star.fill")
                                                        .foregroundColor(.yellow)
                                                }
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.gray)
                                            }
                                            Text("7 мая 2021")
                                                .foregroundColor(.gray)
                                            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                                                
                                        }
                                        .padding()
                                        .background(Rectangle().fill(Color.white)
                                            .cornerRadius(16)
                                            .shadow(radius: 8))
                                        
                                        //                                    ForEach(ModelReview.reviews){ item in
                                        //                                        CardView(item1: item1)
                                        //                                    }
                                    }
                                }
                                
                                
                                .padding()
                                .frame(width: 800, alignment: .leading)
                                    .cornerRadius(20)
                                
                                //
                            }
                        }

                            
                            //тут кнопка "Оставить отзыв"
                            Button("Оставить отзыв"){
                                print("Оставляю отзыв")
                            }
                            .frame(maxWidth: .infinity)
                            .font(Font.headline.weight(.bold))
                            .padding()
                            .foregroundColor(.green)
                            .overlay(
                                Capsule(style: .continuous)
                                    .stroke(Color.green, style: StrokeStyle(lineWidth: 2))
                            )
                            .padding(.leading)
                            .padding(.trailing)

                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack {
//                                ForEach(Model) { item in
//                                    CardView(item1: Model.reviews)
//                                }
                            }
                        }
                        // пока не работает, но я над этим работаю )
//                                .padding()
                        }
                        Divider()
                        //создал новую группу, потому что превысил лимит в 10
                        Group {
                            VStack {
                                Picker("Favorite Color", selection: $selectedColorIndex, content: {
                                    Text("Шт").tag(0)
                                    Text("Кг").tag(1)
                                })
                                .pickerStyle(SegmentedPickerStyle()) // <1>
                            }
                            HStack {
                                VStack{
                                    Text("55.9")
                                        .font(Font.title.weight(.bold))
                                    Text("199,0")
                                        .font(Font.caption)
                                        .foregroundColor(Color.secondary)
                                        .strikethrough()
                                }
                                VStack{
                                    Text("₽ /")
                                    Text("кг")
                                }
                                //вторая версия степпера
                                HStack {
                                    Button(action: {
                                        if self.count != 0 {
                                            self.count -= 1
                                        }
                                    }) {
                                        VStack {
                                            HStack {
                                                Text("-")
                                                    .font(Font.largeTitle)
                                                    .frame(width: 35, height: 35)
                                                Spacer()
                                                VStack{
                                                    Text("\(self.count) шт")
                                                        .font(Font.title)
                                                    Text("\(cost * count) ₽")
                                                        .font(Font.caption)
                                                }
                                                Spacer()
                                                Button(action: {
                                                    self.count += 1
                                                }) {
                                                    Text("+")
                                                        .font(Font.largeTitle)
                                                        .frame(width: 35, height: 35)
                                                }
                                            }
                                        }
                                        .padding()
                                        .background(Color.green)
                                        .foregroundColor(.white)
                                        .cornerRadius(40)
                                    }
                                } .padding(.leading)// пока не работает
                            }
                        }.padding()
                    }
                }

            //.navigationTitle("")
                .toolbar {
                    ToolbarItemGroup(placement: .principal) {
                        HStack {
                            HStack{
                                Image(systemName: "arrow.left")}
                            Spacer()
                            HStack{
                                Image(systemName: "chart.bar.doc.horizontal")
                                    .padding()
                                Image(systemName: "square.and.arrow.up")
                                    .padding()
                                Image(systemName: "heart")
                            }
                        }
                        .foregroundColor(.green)
                    }
                    ToolbarItemGroup(placement: .bottomBar) {
                        Button {
                        } label: {
                            VStack{
                                Image(systemName: "bolt.circle")
//                                Image("spar")
//                                    .resizable()
//                                    .frame(width: 44, height: 44, alignment: .bottom)
                                Text("Главная")
                            }
                            .foregroundColor(.green)
                        }
                        Spacer()
                        
                        Button {
                        } label: {
                            VStack{
                                Image(systemName: "command")
                                Text("Каталог")
                            }
                            .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        Button {
                        } label: {
                            VStack{
                                Image(systemName: "cart")
                                Text("Корзина")
                            }
                            .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        Button {
                        } label: {
                            VStack{
                                Image(systemName: "person")
                                Text("Профиль")
                            }
                            .foregroundColor(.gray)
                            
                        }
                    }
                   
                }
            }
        
            
    }
        
    
    struct CardView_Previews: PreviewProvider {
        static var previews: some View {
            CardView(item: Model(estimation: "4.1",
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
                                 review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"))
//                                ),
//                     item1: ModelReview(nameOfTheBuyer: "Александр В.",
//                                        dateOfReview: "7 мая 2021",
//                                        review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"))
        }
    }
        //    }
        
        
        
        //позднее вынесу это отсюда. Тут можно нарисовать флажок вместо прямоугольника
        struct CustomShape: Shape {
            func path(in rect: CGRect) -> Path {
                var path = Path()
                path.move(to: CGPoint(x: rect.minX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.minY, y: rect.maxX))
                path.closeSubpath()
                return path
            }
        }
        
        // тут закончилась функция по обрезанию флага
    }
//}

