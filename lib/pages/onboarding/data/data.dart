
import '../models/item.dart';

List<Item> items = [
  Item(
      title: 'Explore local & national events',
      lottie: lotties[0],
      description: "Find concerts, sports, theater, and more with our easy-to-use event discovery tools. Whether you're looking for something to do tonight or planning ahead, we've got you covered."),
  Item(
      title: 'Book tickets in seconds',
      lottie: lotties[1],
      description: 'Say goodbye to long queues and complicated booking processes. With our streamlined ticketing system, you can secure your spot at your favorite events in just a few taps.'),
  Item(
      title: 'Curated recommendations just for you',
      lottie: lotties[2],
      description: 'Receive personalized event recommendations based on your interests and past bookings. Never miss out on an event you\'ll love, and enjoy exclusive deals and discounts.'),
];

List<String> lotties = [
  'assets/lotties/ticket_scan_purple.json',
  'assets/lotties/tickets_fast.json',
  'assets/lotties/personalized_events.json',
];