class Song {
  final String title;
  final String audioUrl;

  // optional param is the page number for the pdf
  final int? pageNumber;

  Song({
    required this.title,
    required this.audioUrl,
    this.pageNumber,
  });
}
