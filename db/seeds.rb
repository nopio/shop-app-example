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
                    {id: 1, name: "Floral Print M-Slit Maxi Dress", price: 29.90, category_id: 1},
                    {id: 2, name: "Open-Back Mini Dress", price: 24.90, category_id: 1 },
                    {id: 3, name: "Selfie Leslie Striped Romper", price: 65.0, category_id: 1},
                    {id: 4, name: "Scalloped Crochet Top", price: 12.90, category_id: 2},
                    {id: 5, name: "Strappy Star Wars Graphic Tee", price: 22.90, category_id: 2},
                    {id: 6, name: "Athletic-Inspired Windbreaker", price: 38.00, category_id: 3},
                    {id: 7, name: "Longline Woven Kimono", price: 24.90, category_id: 3},
                    {id: 8, name: "Destroyed Drawstring Jeans", price: 27.90, category_id: 4},
                    {id: 9, name: "Contemporary Skinny Jeans", price: 15.90, category_id: 4},
                    {id: 10, name: "Floral Print A-Line Skirt", price: 29.80, category_id: 5},
                    {id: 11, name: "Faux Leather Slit Pencil Skirt", price: 17.50, category_id: 5}
                ])