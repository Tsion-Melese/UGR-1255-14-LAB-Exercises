import 'dart:io';
import 'dart:async';

void main() async {
  const numFiles = 3;

  List<Future> downloads = [];

  for (int i = 0; i < numFiles; i++) {
    downloads.add(downloadFile(i));
  }

  await Future.wait(downloads);

  print('All downloads completed');
}

Future<void> downloadFile(int index) async {
  try {
    print('Downloading file $index...');

    var url = 'http://google.com/file$index.zip';
    var client = HttpClient();
    var request = await client.getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidate(response);

    print('File $index downloaded ${bytes.length} bytes');
  } catch (e) {
    print('Error downloading file $index: $e');
  }
}

Future<List<int>> consolidate(HttpClientResponse response) async {
  var bytes = <int>[];

  await response.forEach((chunk) {
    bytes.addAll(chunk);
  });

  return bytes;
}
