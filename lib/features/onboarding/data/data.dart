
import '../models/item.dart';

List<Item> items = [
  Item(
      title: 'Welcome to \nZawadi',
      lottie: lotties[0],
      description: "Get ready to gift joy! Zawadi brings you a world of possibilities to share the perfect present with your loved ones. Let's get started!"),
  Item(
      title: 'Explore Gift Card Providers',
      lottie: lotties[1],
      description: 'Select from a range of trusted gift card providers. Whether it\'s for fashion, dining, or entertainment, find the perfect fit for your loved one from our selection of top brands.'),
  Item(
      title: 'Instant \nRedemption',
      lottie: lotties[2],
      description: 'Gifts that bring instant smiles! Set up instant redemption to ensure your recipients can enjoy their presents right away. Let\'s make gifting effortless!'),

];

List<String> lotties = [
  'assets/lotties/giftbox.json',
  'assets/lotties/peruse.json',
  'assets/lotties/delivery.json',
];