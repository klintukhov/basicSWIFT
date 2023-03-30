import UIKit


// OPREDELENIYE Klassovoy ierarhii
class Media {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Film: Media {
    
    var director: String
    
    init(name: String, director: String) {
        
        self.director = director
        super.init(name: name)
    }
}


class Music: Media {
    
    var artist: String
    var track: String
    
    init(name: String, artist: String, track: String) {
        self.artist = artist
        self.track = track
        super.init(name: name)
    }
}

let mediaArray: [Any] = [Film.init(name: "Aviator", director: "Scorseze"), Music(name: "Osen", artist: "DDT", track: "001"), Film.init(name: "Gangs of New York", director: "Redies"), Music.init(name: "Lesnik", artist: "KIW", track: "002")]


// Proverka tipa
var count = (musicCount: 0, filmCount: 0)

for object in mediaArray {
    
    if object is Film {
        
        count.filmCount += 1
        
    } else if object is Music {
        count.musicCount += 1
    }
}

print("In your player there are \(count.filmCount) movies and \(count.musicCount) tracks")


// Ponizhayushcheye prividenie


for value in mediaArray {
    
    if let musics = value as? Music {       // perevodit Music v peremennuyu  -musics-
        print("The song \(musics.name), by \(musics.artist)")
    }  else if let films = value as? Film {         // perevodit Music v peremennuyu  -films-
        print("The movie \(films.name), by produser \(films.director)")
        
    }
}



// a) Библиотеку книг и видео библиотеку фильмов
// b)Возможность добавлять новые книги и фильмы и после добавления должна происходить автоматическая сортировка по алфавиту
// с)Сделать так что б когда я вызову метод(создайте сами его) - "Sort by mood" то фильмы должны отсортировать по настроению:)
// d)И такойже медод придумать для книг 🙂

struct Library {
    
    var name: String
    var genre: String
    var writer: String
    var pages: Int
}

class Books {
    
    var bookArray = [Library]()
    
    func addBook(name: String, genre: String, writer: String, pages: Int) {
        
        bookArray.append(Library(name: name, genre: genre, writer: writer, pages: pages))
        
        let sortedArray = bookArray.sorted(by: { $0.name < $1.name })
        
        for book in sortedArray {
            
            print(book.name)
        }
    }
    
    func sortByMood(genre: String) {
        let sortedArray = bookArray.sorted(by: { $0.genre < $1.genre})
        for book in sortedArray {
            print(book.name)
        }
    }
}

let book = Books()

book.addBook(name: "Master i Margarita", genre: "roman", writer: "Bulgakov", pages: 159)
book.addBook(name: "Bratia Karamazovu", genre: "povest", writer: "Dostoevskiy", pages: 278)
book.addBook(name: "Mertvue Dushu", genre: "poema", writer: "Gogol", pages: 187)
book.addBook(name: "Viy", genre: "povest", writer: "Gogol", pages: 152)

book.sortByMood(genre: "roman")


struct Video {
    var name: String
    var genre: String
    var lenghth: Int
    
}

class Movie {
    
    var movieArray = [Video]()
    
    func addMovie(name: String, genre: String, lenghth: Int) {
        
        movieArray.append(Video(name: name, genre: genre, lenghth: lenghth))
        
        let sortedMovie = movieArray.sorted(by: { $0.name < $01.name })
        
        for movie in sortedMovie {
            print(movie.name)
        }
    }
    func sortByMood(genre: String) {
        
        let sortedArray = movieArray.sorted(by: { $0.genre < $01.genre})
        
        for movie in movieArray {
            
            print(movie.name)
        }
    }
}

let movie = Movie()

movie.addMovie(name: "Brother2", genre: "Boevik", lenghth: 117)
movie.addMovie(name: "Sister", genre: "Boevik", lenghth: 112)
movie.addMovie(name: "Schindlers List", genre: "Drama", lenghth: 152)

movie.sortByMood(genre: "Drama")
