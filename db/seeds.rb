User.delete_all
Product.delete_all
Tag.delete_all


u1 = User.create(:email => 'tony.contreras@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => true, :balance => 1000.00)
u1 = User.create(:email => 'tony_contreras@yahoo.com', :password => 'a', :password_confirmation => 'a', :is_admin => false, :balance => 500.00)

p1 = Product.create(:name => 'Notebook', :description => 'Fucking awesome notebook', :image => 'http://www.circusponies.com/wp/wp-content/uploads/2012/03/NoteBook3IconTrans256x256.png', :cost => 5.25, :address => '902 Broadway, NYC')
p2 = Product.create(:name => 'Notebook Computer', :description => 'Fucking awesome notebook Mac', :cost =>1000.25, :address => '498 Broadway, NYC')
p3 = Product.create(:name => 'Cup', :description => 'Fucking awesome cup', :cost => 10.25, :address => 'Central Park, NYC')

t1 = Tag.create(:name => 'school')
t2 = Tag.create(:name => 'paper')
t3 = Tag.create(:name => 'cute')
t4 = Tag.create(:name => 'sexy')

p1.tags << t1 << t2 << t3
p2.tags << t4
p3.tags << t3
