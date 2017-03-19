Song.delete_all
Artist.delete_all

mj = Artist.create(name: "Michael Jackson", remote_image_url: "http://res.cloudinary.com/doei2x1xz/image/upload/v1489920468/ziqzw8fmjkiohesxgcbj.jpg")
kdrie = Artist.create(name: "K3", remote_image_url:
"http://res.cloudinary.com/doei2x1xz/image/upload/v1489920468/io7fdjzusw1pzds33edc.jpg")
rick = Artist.create(name: "Ricky A", remote_image_url: "http://res.cloudinary.com/doei2x1xz/image/upload/v1489920469/yl1xropv2efrymthyv2z.gif")

roll = Song.create(name: "Never gonna give you up", artist: rick)
allekleuren = Song.create(name: "Alle kleuren", artist: kdrie)
omas = Song.create(name: "Oma's aan de top", artist: kdrie)
blub = Song.create(name: "Blub, ik ben een vis", artist: kdrie)
toveren = Song.create(name: "Toveren", artist: kdrie)
thriller = Song.create(name: "Thriller", artist: mj)
billy = Song.create(name: "Billy Jean", artist: mj)
