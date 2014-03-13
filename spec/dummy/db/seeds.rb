
# Clear all entries
User.delete_all
Post.delete_all
Comment.delete_all
ChooChoo::Activity.delete_all

u1 = User.create(username: 'UserOne')
u2 = User.create(username: 'UserTwo')

p1 = Post.create(title: 'This is the first post', body: 'This is some content', user: u1)
p2 = Post.create(title: 'This is the second post', body: 'This is some other content', user: u2)

Comment.create(user: u2, post: p1, body: 'No comment')
Comment.create(user: u1, post: p1, body: 'Yes comment')

Comment.create(user: u2, post: p2, body: 'A comment')
Comment.create(user: u1, post: p2, body: 'Another comment')
Comment.create(user: u1, post: p2, body: 'One more for good measure')
