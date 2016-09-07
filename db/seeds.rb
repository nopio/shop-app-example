Category.delete_all
Product.delete_all

Category.create!([
                     {id: 1, name: "Dresses"},
                     {id: 2, name: "Tops"},
                     {id: 3, name: "Jackets"},
                     {id: 4, name: "Jeans"},
                     {id: 5, name: "Skirts"}
                 ])

Product.create!([
                    {id: 1, name: "Floral Print M-Slit Maxi Dress", price: 29.90, upc: "043000000793", category_id: 1},
                    {id: 2, name: "Open-Back Mini Dress", price: 24.90, upc: "044000000677" , category_id: 1 },
                    {id: 3, name: "Selfie Leslie Striped Romper", price: 65.0, upc: "052100001500", category_id: 1},
                    {id: 4, name: "Scalloped Crochet Top", price: 12.90, upc: "978020137962", category_id: 2},
                    {id: 5, name: "Strappy Star Wars Graphic Tee", price: 22.90, upc: "021078015727" , category_id: 2},
                    {id: 6, name: "Athletic-Inspired Windbreaker", price: 38.00, upc: "079911034855", category_id: 3},
                    {id: 7, name: "Longline Woven Kimono", price: 24.90, upc: "015794013785", category_id: 3},
                    {id: 8, name: "Destroyed Drawstring Jeans", price: 27.90, upc: "019800315436", category_id: 4},
                    {id: 9, name: "Contemporary Skinny Jeans", price: 15.90, upc: "021078020141", category_id: 4},
                    {id: 10, name: "Floral Print A-Line Skirt", price: 29.80, upc: "072600016125" , category_id: 5},
                    {id: 11, name: "Faux Leather Slit Pencil Skirt", price: 17.50, upc: "651043022216", category_id: 5}
                ])