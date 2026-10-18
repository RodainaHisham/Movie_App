class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image
  });
}



final List<Movie> Movies =[
  const Movie(
      title:'The Maze Runner',
      genre: 'Dystopian',
      year: 2014,
      rating: 6.8,
      image: 'posters/maze_runner.png'),

  const Movie(
      title:'Clouds',
      genre: 'Musical',
      year: 2020,
      rating: 7.5,
      image: 'posters/clouds.png'),

  const Movie(
      title:'It',
      genre: 'Horror',
      year: 2017,
      rating: 7.3,
      image: 'posters/it.png'),

  const Movie(
      title:'Beetlejuice Beetlejuice',
      genre: 'Dark Comedy',
      year: 2024,
      rating: 6.6,
      image: 'posters/beetlejuice.png'),

  const Movie(
      title:'The Odyssey',
      genre: 'Action Epic',
      year: 2026,
      rating: 8.4,
      image: 'posters/odyssey.png'),

  const Movie(
      title:'Legally Blonde',
      genre: 'Romantic Comedy',
      year: 2001,
      rating: 6.5,
      image: 'posters/legally_blonde.png'),

  const Movie(
      title:'Home Alone',
      genre: 'Comedy',
      year: 1990,
      rating: 7.8,
      image: 'posters/home_alone.png'),

  const Movie(
      title:'Cruella',
      genre: 'Caper',
      year: 2021,
      rating: 7.1,
      image: 'posters/cruella.png'),

  const Movie(
      title:"Harry Potter and the Sorcerer's Stone",
      genre: 'Fantasy',
      year: 2001,
      rating: 7.7,
      image: 'posters/harry_potter.png'),

  const Movie(
      title:'The Mist',
      genre: 'Sci-Fi',
      year: 2001,
      rating: 7.2,
      image: 'posters/the_mist.png'),

];