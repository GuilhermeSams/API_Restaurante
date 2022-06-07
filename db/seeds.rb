# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!( name: "Segunda-Feira | Pratos do Nordeste" )
Category.create!( name: "Terça-Feira | Pratos do Sul" )
Category.create!( name: "Quarta-Feira | Pratos do Norte" )


Product.create!( name: "Acarajé", description: "O prato mais tipico e mais conhecido do nordeste, O acarajé tem origem africana e é um bolinho frito no azeite de dendê, feito com feijão fradinho, sal, alho, gengibre, cebola e recheado com camarão.", price: "15", category_id: 1)
Product.create!( name: "Vatapá", description: "O vatapá é um creme feito com farinha de rosca ou fubá, castanha de caju, pimenta, leite de coco, amendoim, pão, azeite de dendê e camarão", price: "20", category_id: 1)
Product.create!( name: "Caranguejo", description: "Pode ser servido sozinho ou acompanhado por siri, camarão, ostras e outros frutos do mar.", price: "30", category_id: 1)

Product.create!( name: "Arroz Carreteiro", description: "Originalmente com arroz e carne seca, ou carne de charque, possível experimentar esse prato acompanhado com pimenta e vinagrete, o que gera uma combinação sensacional.", price: "20", category_id: 2)
Product.create!( name: "Costela Assada", description: "Temperada basicamente com sal grosso, ela pode ser preparada do jeito tradicional, ou na brasa, a fogo lento, tornando a carne suculenta e simplesmente deliciosa.", price: "45", category_id: 2)
Product.create!( name: "X-Gaúcho", description: "O X-Gaúcho é uma das comidas típicas da Região Sul. Isso porque o lanche é um pão prensado, cujo recheio normalmente inclui uma de suas três variações: picanha assada, hambúrguer e carne desfiada, ou carne de panela.", price: "25", category_id: 2)

Product.create!( name: "Tacacá", description: "Com uma mistura de itens intensos, como: tapioca, camarão, pimenta, jambu – erva amazônica que pode adormecer um pouco a boca", price: "45", category_id: 3)
Product.create!( name: "Maniçoba", description: "Na comida são usadas folhas de mandioca, que são moídas e cozidas por cerca de uma semana. Esse cuidado é importante para tirar uma substância venenosa chamada de ácido cianídrico, que existe no alimento.", price: "25", category_id: 3)
Product.create!( name: "Pirarucu de Casaca", description: "Além do Pirarucu, esse prato leva ainda farinha de mandioca, banana da terra bem madura, azeite, tomate, pimentão, cebola, cheiro verde, temperos, manteiga e colorau.", price: "35", category_id: 3)
Product.create!( name: "Açaí", description: "Apesar de ser consumudo no Brasil todo, o açaí é um dos principais pratos típicos como sobremesa, podendo conter vários ingredientes que deixam bem saboroso", price: "6", category_id: 3)

User.create!( email: "guilhermeps3670@gmail.com", password: "123456", name: "Guilherme")
User.create!( email: "guilhermequiara@gmail.com", password: "123456", name: "Yan")

Favorite.create!( user_favorite_product: "Acarajé", user_id: 1, product_id: 1 )
Favorite.create!( user_favorite_product: "Caranguejo", user_id: 2, product_id: 3 )

User.find_by(id:1).photo.attached(io: File.open, filename:)