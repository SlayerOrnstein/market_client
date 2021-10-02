const String _basePath = 'https://warframe.market';

/// Market Image Uri builder for market assets
Uri marketImageUriBuilder(String imagePath) {
  return Uri.https(_basePath, '/static/assets/$imagePath');
}
