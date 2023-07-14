import 'package:orderpos/utils/locator.dart';

import '../services/content_services.dart';

class ContentRepository implements ContentServices {
  
  ContentServices services = locator<ContentServices>();
  @override
  late String url;

  @override
  late Map<String, String> header;
}
