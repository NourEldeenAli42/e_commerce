import 'package:paw_print/core/models/product_model.dart';

abstract final class Data {
  static List<ProductModel> products = [
    ProductModel(
      id: '21',
      name: 'Night Sunnies',
      category: 'Aviation',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 88.0,
      imageUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=600',
      tags: ['Limited'],
    ),
    ProductModel(
      id: '23',
      name: 'Alpine Sunglasses',
      category: 'Outdoor',
      description:
          'Understated professional frames crafted for polished everyday wear.',
      price: 105.5,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      tags: ['Lightweight'],
    ),
    ProductModel(
      id: '24',
      name: 'Alpine Kids',
      category: 'Kids',
      description:
          'Premium sunglasses designed for comfortable everyday outdoor use.',
      price: 190.99,
      imageUrl:
          'https://images.unsplash.com/photo-1483412033650-1015ddeb83d1?w=600',
      tags: ['New'],
    ),
    ProductModel(
      id: '25',
      name: 'Cycling Glasses',
      category: 'Sportswear',
      description: 'Sport-focused sunglasses designed for active lifestyles.',
      price: 86.0,
      imageUrl:
          'https://images.unsplash.com/photo-1542282088-fe8426682b8f?w=600',
      discount: 21.0,
      tags: ['Popular', 'Premium'],
    ),
    ProductModel(
      id: '26',
      name: 'Coastal Frames',
      category: 'Luxury',
      description:
          'Premium frames combining style, comfort, and excellent protection.',
      price: 168.99,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      tags: ['Kids', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '27',
      name: 'Business Shades',
      category: 'Vintage',
      description:
          'Simple everyday sunglasses with a clean professional design.',
      price: 92.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 13.0,
      tags: ['Sport'],
    ),
    ProductModel(
      id: '28',
      name: 'Sport Goggles',
      category: 'Fashion',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 57.99,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      discount: 17.0,
      tags: ['Popular', 'Trending', 'Lightweight'],
    ),
    ProductModel(
      id: '29',
      name: 'Business Lens',
      category: 'Kids',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 176.5,
      imageUrl:
          'https://images.unsplash.com/photo-1523293182086-7651a899d37f?w=600',
      discount: 10.0,
      tags: ['Kids', 'Outdoor'],
    ),
    ProductModel(
      id: '30',
      name: 'Aviator Sunnies',
      category: 'Urban',
      description: 'A timeless frame with UV protection and a comfortable lightweight design.',
      price: 72.0,
      imageUrl:
          'https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?w=600',
      tags: ['Classic', 'Limited', 'Outdoor'],
    ),
    ProductModel(
      id: '31',
      name: 'Onyx Glasses',
      category: 'Kids',
      description:
          'Understated professional frames crafted for polished everyday wear.',
      price: 210.99,
      imageUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=600',
      tags: ['Handmade', 'Bestseller'],
    ),
    ProductModel(
      id: '32',
      name: 'Horizon Sunglasses',
      category: 'Performance',
      description: 'Simple everyday sunglasses with a clean modern design.',
      price: 73.0,
      imageUrl:
          'https://images.unsplash.com/photo-1503341504253-dff4815485f1?w=600',
      tags: ['Kids', 'Exclusive'],
    ),
    ProductModel(
      id: '33',
      name: 'Featherlight Lens',
      category: 'ShineStopper',
      description:
          'Modern sunglasses combining minimalist design with all-day comfort.',
      price: 72.0,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      tags: ['Limited'],
    ),
    ProductModel(
      id: '34',
      name: 'Solar Specs',
      category: 'Eyewear',
      description:
          'A timeless frame with UV protection and a lightweight design.',
      price: 208.5,
      imageUrl:
          'https://images.unsplash.com/photo-1473496169904-658ba7c44d8a?w=600',
      discount: 27.0,
      tags: ['Exclusive'],
    ),
    ProductModel(
      id: '35',
      name: 'Voyager Sunglasses',
      category: 'Beachwear',
      description:
          'Bold frames inspired by retro fashion with a modern finish.',
      price: 179.0,
      imageUrl:
          'https://images.unsplash.com/photo-1610878180933-123728745d22?w=600',
      tags: ['Trending', 'Kids'],
    ),
    ProductModel(
      id: '36',
      name: 'Skyline Eyewear',
      category: 'Lifestyle',
      description: 'Protective eyewear built to handle wind, dust, and glare.',
      price: 139.99,
      imageUrl:
          'https://images.unsplash.com/photo-1556306535-38febf6782e7?w=600',
      tags: ['Bestseller', 'Lightweight', 'Premium'],
    ),
    ProductModel(
      id: '37',
      name: 'Frost Lens',
      category: 'Vintage',
      description:
          'A timeless frame with UV protection and lightweight comfort.',
      price: 88.0,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      discount: 19.0,
      tags: ['New', 'Exclusive'],
    ),
    ProductModel(
      id: '38',
      name: 'Urban Frames',
      category: 'Sportswear',
      description: 'Wraparound eyewear designed for active outdoor use.',
      price: 50.5,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      discount: 12.0,
      tags: ['Sport', 'Kids', 'Popular'],
    ),
    ProductModel(
      id: '39',
      name: 'Slate Vision',
      category: 'Vintage',
      description:
          'Modern sunglasses combining minimalist styling with comfort.',
      price: 182.5,
      imageUrl:
          'https://images.unsplash.com/photo-1556306535-38febf6782e7?w=600',
      discount: 21.0,
      tags: ['Classic', 'Lightweight'],
    ),
    ProductModel(
      id: '40',
      name: 'Sahara Sunnies',
      category: 'Luxury',
      description:
          'Reflective lenses paired with a durable frame for a standout look.',
      price: 217.0,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 13.0,
      tags: ['Sport'],
    ),
    ProductModel(
      id: '41',
      name: 'Kids Frames',
      category: 'Kids',
      description:
          'Comfortable lightweight glasses designed for active outdoor use.',
      price: 70.0,
      imageUrl:
          'https://images.unsplash.com/photo-1503341504253-dff4815485f1?w=600',
      discount: 27.0,
      tags: ['Outdoor'],
    ),
    ProductModel(
      id: '42',
      name: 'Copper Sunglasses',
      category: 'Eyewear',
      description: 'Reflective lenses paired with a durable stylish frame.',
      price: 220.0,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      tags: ['Popular', 'Classic'],
    ),
    ProductModel(
      id: '43',
      name: 'Voyager Specs',
      category: 'Lifestyle',
      description:
          'Understated professional frames for polished everyday wear.',
      price: 115.0,
      imageUrl:
          'https://images.unsplash.com/photo-1509695507497-903c140c43b0?w=600',
      discount: 30.0,
      tags: ['Lightweight', 'Handmade'],
    ),
    ProductModel(
      id: '44',
      name: 'Sahara Glasses',
      category: 'Fashion',
      description:
          'Flexible frames with full UV protection built for everyday use.',
      price: 213.99,
      imageUrl:
          'https://images.unsplash.com/photo-1610878180933-123728745d22?w=600',
      discount: 12.0,
      tags: ['Limited'],
    ),
    ProductModel(
      id: '45',
      name: 'Ivory Sunnies',
      category: 'Aviation',
      description: 'Classic sunglasses with a sleek frame and UV protection.',
      price: 55.99,
      imageUrl:
          'https://images.unsplash.com/photo-1610878180933-123728745d22?w=600',
      discount: 26.0,
      tags: ['New', 'Kids'],
    ),
    ProductModel(
      id: '46',
      name: 'Aviator Shades',
      category: 'Sportswear',
      description:
          'Durable sunglasses designed for travel and everyday adventures.',
      price: 57.0,
      imageUrl:
          'https://images.unsplash.com/photo-1542282088-fe8426682b8f?w=600',
      discount: 27.0,
      tags: ['Limited', 'Lightweight'],
    ),
    ProductModel(
      id: '47',
      name: 'Sport Vision',
      category: 'Sportswear',
      description: 'Simple everyday sunglasses with a clean modern design.',
      price: 160.99,
      imageUrl:
          'https://images.unsplash.com/photo-1608539733626-08b769ba0d51?w=600',
      discount: 12.0,
      tags: ['Sport', 'Trending'],
    ),
    ProductModel(
      id: '48',
      name: 'Neon Shades',
      category: 'Luxury',
      description: 'Reflective lenses paired with a durable premium frame.',
      price: 98.5,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      discount: 21.0,
      tags: ['Exclusive'],
    ),
    ProductModel(
      id: '49',
      name: 'Ivory Frames',
      category: 'Kids',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 68.5,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      tags: ['Trending', 'Popular'],
    ),
    ProductModel(
      id: '50',
      name: 'Frost Lens',
      category: 'Aviation',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 152.99,
      imageUrl:
          'https://images.unsplash.com/photo-1608539733626-08b769ba0d51?w=600',
      discount: 25.0,
      tags: ['Lightweight', 'Bestseller'],
    ),
    ProductModel(
      id: '51',
      name: 'Everyday Shades',
      category: 'Performance',
      description:
          'A timeless frame with UV protection and lightweight comfort.',
      price: 201.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 12.0,
      tags: ['Eco-Friendly', 'Premium'],
    ),
    ProductModel(
      id: '52',
      name: 'Vintage Glasses',
      category: 'Kids',
      description: 'Comfortable lightweight glasses designed for outdoor use.',
      price: 89.0,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      tags: ['New', 'Lightweight'],
    ),
    ProductModel(
      id: '53',
      name: 'Horizon Shades',
      category: 'Luxury',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 73.5,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      tags: ['Exclusive'],
    ),
    ProductModel(
      id: '54',
      name: 'Premium Shades',
      category: 'Kids',
      description:
          'Stylish sunglasses designed for everyday comfort and protection.',
      price: 191.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 8.0,
      tags: ['Premium', 'Handmade'],
    ),
    ProductModel(
      id: '55',
      name: 'Sport Goggles',
      category: 'Lifestyle',
      description: 'Reflective lenses paired with a durable frame.',
      price: 89.0,
      imageUrl:
          'https://images.unsplash.com/photo-1483412033650-1015ddeb83d1?w=600',
      tags: ['Limited', 'Eco-Friendly', 'Popular'],
    ),
    ProductModel(
      id: '56',
      name: 'Business Shades',
      category: 'Beachwear',
      description: 'Aerodynamic design built for high-intensity activity.',
      price: 76.5,
      imageUrl:
          'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600',
      discount: 28.0,
      tags: ['Handmade', 'Bestseller', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '57',
      name: 'Business Glasses',
      category: 'Premium Eyewear',
      description: 'Aerodynamic design built to stay secure during activity.',
      price: 168.5,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      tags: ['Sport', 'Polarized'],
    ),
    ProductModel(
      id: '58',
      name: 'Sahara Goggles',
      category: 'Performance',
      description:
          'Understated professional frames for polished everyday wear.',
      price: 184.0,
      imageUrl:
          'https://images.unsplash.com/photo-1473496169904-658ba7c44d8a?w=600',
      discount: 10.0,
      tags: ['Trending', 'Polarized'],
    ),
    ProductModel(
      id: '59',
      name: 'Premium Glasses',
      category: 'Outdoor',
      description: 'Reflective lenses paired with a durable frame.',
      price: 134.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 6.0,
      tags: ['Popular', 'Limited'],
    ),
    ProductModel(
      id: '60',
      name: 'Beach Sunnies',
      category: 'Sportswear',
      description:
          'Durable sunglasses designed for travel and everyday adventures.',
      price: 121.99,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      discount: 30.0,
      tags: ['Classic'],
    ),
    ProductModel(
      id: '61',
      name: 'Slate Frames',
      category: 'Performance',
      description: 'Stylish sunglasses designed for everyday comfort.',
      price: 169.0,
      imageUrl:
          'https://images.unsplash.com/photo-1608539733626-08b769ba0d51?w=600',
      tags: ['Premium', 'Classic'],
    ),
    ProductModel(
      id: '62',
      name: 'Premium Goggles',
      category: 'ShineStopper',
      description: 'Classic sunglasses with a sleek frame and UV protection.',
      price: 161.0,
      imageUrl:
          'https://images.unsplash.com/photo-1600091166971-7f9faad6c1e2?w=600',
      discount: 22.0,
      tags: ['Classic', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '63',
      name: 'Clubmaster Lens',
      category: 'Premium Eyewear',
      description:
          'Modern sunglasses combining minimalist styling and comfort.',
      price: 119.5,
      imageUrl:
          'https://images.unsplash.com/photo-1509695507497-903c140c43b0?w=600',
      tags: ['Classic', 'Kids'],
    ),
    ProductModel(
      id: '64',
      name: 'Anti-Glare Glasses',
      category: 'Performance',
      description:
          'Modern sunglasses combining minimalist design with comfort.',
      price: 120.99,
      imageUrl:
          'https://images.unsplash.com/photo-1614715838608-99a5c0dad4d5?w=600',
      tags: ['Outdoor', 'Lightweight', 'Bestseller'],
    ),
    ProductModel(
      id: '65',
      name: 'Vintage Lens',
      category: 'Vintage',
      description: 'Aerodynamic sunglasses designed for secure everyday use.',
      price: 203.99,
      imageUrl:
          'https://images.unsplash.com/photo-1509695507497-903c140c43b0?w=600',
      tags: ['Kids', 'Bestseller'],
    ),
    ProductModel(
      id: '66',
      name: 'Drift Goggles',
      category: 'Sportswear',
      description: 'Professional frames crafted for polished everyday wear.',
      price: 212.0,
      imageUrl:
          'https://images.unsplash.com/photo-1600091166971-7f9faad6c1e2?w=600',
      discount: 10.0,
      tags: ['New'],
    ),
    ProductModel(
      id: '67',
      name: 'Business Specs',
      category: 'ShineStopper',
      description: 'Professional frames crafted for polished everyday wear.',
      price: 179.5,
      imageUrl:
          'https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?w=600',
      tags: ['Eco-Friendly', 'Lightweight'],
    ),
    ProductModel(
      id: '68',
      name: 'Alpine Specs',
      category: 'Fashion',
      description: 'Modern sunglasses combining minimalist design and comfort.',
      price: 71.99,
      imageUrl:
          'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600',
      tags: ['Handmade'],
    ),
    ProductModel(
      id: '69',
      name: 'Ember Frames',
      category: 'Premium Eyewear',
      description: 'Aerodynamic design built for active lifestyles.',
      price: 213.99,
      imageUrl:
          'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=600',
      discount: 11.0,
      tags: ['Outdoor'],
    ),
    ProductModel(
      id: '70',
      name: 'Retro Specs',
      category: 'Luxury',
      description:
          'Bold retro-inspired frames with a modern lightweight finish.',
      price: 218.99,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      tags: ['Limited', 'Polarized', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '71',
      name: 'Cascade Eyewear',
      category: 'Urban',
      description: 'Wraparound protective eyewear built for wind and glare.',
      price: 141.0,
      imageUrl:
          'https://images.unsplash.com/photo-1610878180933-123728745d22?w=600',
      discount: 24.0,
      tags: ['Handmade', 'Lightweight'],
    ),
    ProductModel(
      id: '72',
      name: 'Onyx Specs',
      category: 'Luxury',
      description: 'Modern sunglasses combining minimalist design and comfort.',
      price: 93.0,
      imageUrl:
          'https://images.unsplash.com/photo-1600091166971-7f9faad6c1e2?w=600',
      discount: 13.0,
      tags: ['Popular'],
    ),
    ProductModel(
      id: '73',
      name: 'Explorer Frames',
      category: 'Fashion',
      description: 'Flexible frames with full UV protection built to last.',
      price: 72.0,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      discount: 13.0,
      tags: ['Classic', 'New', 'Sport'],
    ),
    ProductModel(
      id: '74',
      name: 'Dusk Eyewear',
      category: 'Travel',
      description: 'Aerodynamic design built for active lifestyles.',
      price: 147.99,
      imageUrl:
          'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600',
      tags: ['Outdoor', 'New', 'Premium'],
    ),
    ProductModel(
      id: '75',
      name: 'Featherlight Eyewear',
      category: 'Urban',
      description: 'Wraparound protective eyewear designed for outdoor use.',
      price: 212.5,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      tags: ['Outdoor', 'Sport'],
    ),
    ProductModel(
      id: '76',
      name: 'Desert Eyewear',
      category: 'Vintage',
      description: 'Stylish sunglasses designed for everyday comfort.',
      price: 113.99,
      imageUrl:
          'https://images.unsplash.com/photo-1542282088-fe8426682b8f?w=600',
      tags: ['Lightweight', 'Popular', 'Limited'],
    ),
    ProductModel(
      id: '77',
      name: 'Ivory Sunnies',
      category: 'Travel',
      description: 'Simple everyday sunglasses with a clean modern design.',
      price: 149.99,
      imageUrl:
          'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600',
      discount: 16.0,
      tags: ['Popular', 'New', 'Trending'],
    ),
    ProductModel(
      id: '78',
      name: 'Alpine Goggles',
      category: 'Lifestyle',
      description:
          'Comfortable lightweight glasses designed for outdoor activity.',
      price: 102.5,
      imageUrl:
          'https://images.unsplash.com/photo-1503341504253-dff4815485f1?w=600',
      tags: ['Trending', 'Polarized', 'Exclusive'],
    ),
    ProductModel(
      id: '79',
      name: 'Nomad Sunnies',
      category: 'Aviation',
      description: 'Bold retro-inspired frames with a lightweight finish.',
      price: 54.5,
      imageUrl:
          'https://images.unsplash.com/photo-1473496169904-658ba7c44d8a?w=600',
      tags: ['Handmade'],
    ),
    ProductModel(
      id: '80',
      name: 'Classic Frames',
      category: 'Lifestyle',
      description: 'Professional frames crafted for polished everyday wear.',
      price: 49.0,
      imageUrl:
          'https://images.unsplash.com/photo-1473496169904-658ba7c44d8a?w=600',
      discount: 22.0,
      tags: ['Outdoor', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '81',
      name: 'Beach Goggles',
      category: 'Premium Eyewear',
      description:
          'Durable sunglasses designed for travel and everyday adventures.',
      price: 151.99,
      imageUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=600',
      tags: ['Trending', 'Exclusive'],
    ),
    ProductModel(
      id: '82',
      name: 'Marina Sunnies',
      category: 'Travel',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 146.5,
      imageUrl:
          'https://images.unsplash.com/photo-1542282088-fe8426682b8f?w=600',
      tags: ['Exclusive', 'Limited'],
    ),
    ProductModel(
      id: '83',
      name: 'Business Sunglasses',
      category: 'Aviation',
      description: 'Aerodynamic design built for high-intensity activity.',
      price: 98.99,
      imageUrl:
          'https://images.unsplash.com/photo-1614715838608-99a5c0dad4d5?w=600',
      tags: ['Premium'],
    ),
    ProductModel(
      id: '84',
      name: 'Ivory Eyewear',
      category: 'Luxury',
      description: 'Classic sunglasses with a sleek frame and UV protection.',
      price: 57.99,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      discount: 16.0,
      tags: ['Exclusive', 'Classic', 'Premium'],
    ),
    ProductModel(
      id: '85',
      name: 'Sahara Shades',
      category: 'Fashion',
      description: 'Lightweight sunglasses built for active lifestyles.',
      price: 173.99,
      imageUrl:
          'https://images.unsplash.com/photo-1503341504253-dff4815485f1?w=600',
      tags: ['Outdoor', 'Classic', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '86',
      name: 'Marina Glasses',
      category: 'Outdoor',
      description: 'Understated professional frames for everyday wear.',
      price: 88.0,
      imageUrl:
          'https://images.unsplash.com/photo-1503341504253-dff4815485f1?w=600',
      tags: ['Handmade', 'Outdoor'],
    ),
    ProductModel(
      id: '87',
      name: 'Slate Vision',
      category: 'Luxury',
      description: 'Simple everyday sunglasses with a clean design.',
      price: 104.5,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      discount: 10.0,
      tags: ['Premium', 'Trending'],
    ),
    ProductModel(
      id: '88',
      name: 'Skyline Glasses',
      category: 'Kids',
      description: 'Stylish sunglasses designed for everyday comfort.',
      price: 135.0,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      discount: 15.0,
      tags: ['Eco-Friendly', 'Outdoor'],
    ),
    ProductModel(
      id: '89',
      name: 'Voyager Specs',
      category: 'Beachwear',
      description:
          'Stylish sunglasses designed for everyday comfort and protection.',
      price: 61.0,
      imageUrl:
          'https://images.unsplash.com/photo-1542282088-fe8426682b8f?w=600',
      tags: ['Bestseller', 'Limited'],
    ),
    ProductModel(
      id: '90',
      name: 'Metro Specs',
      category: 'Kids',
      description:
          'Bold retro-inspired frames with a modern lightweight finish.',
      price: 105.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 23.0,
      tags: ['Trending', 'Lightweight'],
    ),
    ProductModel(
      id: '91',
      name: 'Cycling Sunglasses',
      category: 'Aviation',
      description:
          'Modern sunglasses combining minimalist design with comfort.',
      price: 100.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      tags: ['Sport', 'Lightweight'],
    ),
    ProductModel(
      id: '92',
      name: 'Nomad Glasses',
      category: 'Aviation',
      description:
          'Durable sunglasses designed for travel and everyday adventures.',
      price: 216.99,
      imageUrl:
          'https://images.unsplash.com/photo-1614715838608-99a5c0dad4d5?w=600',
      discount: 8.0,
      tags: ['Trending', 'Sport'],
    ),
    ProductModel(
      id: '93',
      name: 'Metro Shades',
      category: 'Performance',
      description: 'Stylish sunglasses designed for everyday comfort.',
      price: 169.0,
      imageUrl:
          'https://images.unsplash.com/photo-1503341504253-dff4815485f1?w=600',
      discount: 6.0,
      tags: ['Eco-Friendly', 'Popular'],
    ),
    ProductModel(
      id: '94',
      name: 'Voyager Sunglasses',
      category: 'Urban',
      description:
          'Stylish sunglasses designed for everyday comfort and protection.',
      price: 145.5,
      imageUrl:
          'https://images.unsplash.com/photo-1610878180933-123728745d22?w=600',
      discount: 10.0,
      tags: ['Trending'],
    ),
    ProductModel(
      id: '95',
      name: 'Nomad Sunglasses',
      category: 'Urban',
      description:
          'A timeless frame with UV protection and lightweight comfort.',
      price: 115.0,
      imageUrl:
          'https://images.unsplash.com/photo-1523293182086-7651a899d37f?w=600',
      tags: ['Popular'],
    ),
    ProductModel(
      id: '96',
      name: 'Explorer Vision',
      category: 'Performance',
      description:
          'A timeless frame with UV protection and lightweight comfort.',
      price: 219.0,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      tags: ['Handmade', 'Kids'],
    ),
    ProductModel(
      id: '97',
      name: 'Alpine Specs',
      category: 'Travel',
      description:
          'Comfortable lightweight glasses designed for active outdoor use.',
      price: 97.99,
      imageUrl:
          'https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?w=600',
      discount: 21.0,
      tags: ['Handmade'],
    ),
    ProductModel(
      id: '98',
      name: 'Vintage Frames',
      category: 'Performance',
      description: 'Reflective lenses paired with a durable frame.',
      price: 59.0,
      imageUrl:
          'https://images.unsplash.com/photo-1509695507497-903c140c43b0?w=600',
      tags: ['New', 'Classic'],
    ),
    ProductModel(
      id: '99',
      name: 'Frost Vision',
      category: 'Vintage',
      description:
          'Premium sunglasses offering excellent clarity and reduced glare.',
      price: 51.5,
      imageUrl:
          'https://images.unsplash.com/photo-1600091166971-7f9faad6c1e2?w=600',
      tags: ['Exclusive', 'Bestseller', 'Sport'],
    ),
    ProductModel(
      id: '100',
      name: 'Beach Vision',
      category: 'Luxury',
      description: 'Aerodynamic design built to stay secure during activity.',
      price: 208.5,
      imageUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=600',
      discount: 21.0,
      tags: ['Polarized', 'Popular'],
    ),
    ProductModel(
      id: '101',
      name: 'Premium Sunnies',
      category: 'Premium Eyewear',
      description: 'Aerodynamic design built for active lifestyles.',
      price: 99.99,
      imageUrl:
          'https://images.unsplash.com/photo-1523293182086-7651a899d37f?w=600',
      tags: ['Exclusive', 'Outdoor', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '102',
      name: 'Featherlight Eyewear',
      category: 'Performance',
      description:
          'Bold frames inspired by retro fashion with a lightweight finish.',
      price: 140.5,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      tags: ['Eco-Friendly', 'Premium', 'Limited'],
    ),
    ProductModel(
      id: '103',
      name: 'Beach Sunnies',
      category: 'Sportswear',
      description: 'Modern sunglasses combining minimalist design and comfort.',
      price: 213.99,
      imageUrl:
          'https://images.unsplash.com/photo-1523293182086-7651a899d37f?w=600',
      tags: ['Limited', 'New'],
    ),
    ProductModel(
      id: '104',
      name: 'Mirror Specs',
      category: 'Kids',
      description: 'Reflective lenses paired with a durable frame.',
      price: 122.5,
      imageUrl:
          'https://images.unsplash.com/photo-1509695507497-903c140c43b0?w=600',
      tags: ['Bestseller', 'Polarized', 'Outdoor'],
    ),
    ProductModel(
      id: '105',
      name: 'Aviator Specs',
      category: 'Outdoor',
      description: 'Simple everyday sunglasses with a clean design.',
      price: 103.99,
      imageUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=600',
      tags: ['Classic', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '106',
      name: 'Voyager Glasses',
      category: 'Luxury',
      description: 'Simple everyday sunglasses with a clean modern design.',
      price: 187.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 13.0,
      tags: ['Exclusive', 'Handmade'],
    ),
    ProductModel(
      id: '107',
      name: 'Neon Lens',
      category: 'Urban',
      description: 'Stylish sunglasses designed for everyday comfort.',
      price: 160.99,
      imageUrl:
          'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=600',
      discount: 10.0,
      tags: ['Limited', 'Handmade'],
    ),
    ProductModel(
      id: '108',
      name: 'Voyager Specs',
      category: 'Beachwear',
      description:
          'Stylish sunglasses designed for everyday comfort and protection.',
      price: 81.99,
      imageUrl:
          'https://images.unsplash.com/photo-1519671482749-fd09be7ccebf?w=600',
      tags: ['Lightweight', 'Eco-Friendly', 'Outdoor'],
    ),
    ProductModel(
      id: '109',
      name: 'Night Sunnies',
      category: 'Luxury',
      description:
          'Durable sunglasses designed for travel and everyday adventures.',
      price: 185.99,
      imageUrl:
          'https://images.unsplash.com/photo-1509695507497-903c140c43b0?w=600',
      discount: 5.0,
      tags: ['Exclusive', 'Sport', 'Lightweight'],
    ),
    ProductModel(
      id: '110',
      name: 'Sahara Sunglasses',
      category: 'Luxury',
      description: 'Professional frames crafted for polished everyday wear.',
      price: 72.99,
      imageUrl:
          'https://images.unsplash.com/photo-1600091166971-7f9faad6c1e2?w=600',
      discount: 12.0,
      tags: ['Outdoor', 'Sport', 'Lightweight'],
    ),
    ProductModel(
      id: '111',
      name: 'Copper Shades',
      category: 'Fashion',
      description:
          'Modern sunglasses combining minimalist design with comfort.',
      price: 206.99,
      imageUrl:
          'https://images.unsplash.com/photo-1519671482749-fd09be7ccebf?w=600',
      tags: ['Handmade', 'Lightweight'],
    ),
    ProductModel(
      id: '112',
      name: 'Dusk Goggles',
      category: 'Travel',
      description: 'Aerodynamic design built for secure active use.',
      price: 134.0,
      imageUrl:
          'https://images.unsplash.com/photo-1600091166971-7f9faad6c1e2?w=600',
      tags: ['Polarized', 'Popular', 'Outdoor'],
    ),
    ProductModel(
      id: '113',
      name: 'Ivory Specs',
      category: 'Outdoor',
      description: 'Classic sunglasses with a sleek frame and UV protection.',
      price: 142.99,
      imageUrl:
          'https://images.unsplash.com/photo-1542282088-fe8426682b8f?w=600',
      discount: 13.0,
      tags: ['Eco-Friendly', 'Sport'],
    ),
    ProductModel(
      id: '114',
      name: 'Slate Eyewear',
      category: 'Lifestyle',
      description: 'Professional frames crafted for polished everyday wear.',
      price: 181.0,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      tags: ['Classic', 'Bestseller', 'Handmade'],
    ),
    ProductModel(
      id: '115',
      name: 'Explorer Specs',
      category: 'Eyewear',
      description: 'Lightweight sunglasses built for active lifestyles.',
      price: 133.99,
      imageUrl:
          'https://images.unsplash.com/photo-1585123334904-845d60e97b29?w=600',
      tags: ['Exclusive', 'Kids', 'Outdoor'],
    ),
    ProductModel(
      id: '116',
      name: 'Anti-Glare Shades',
      category: 'Fashion',
      description: 'Understated professional frames crafted for everyday wear.',
      price: 160.0,
      imageUrl:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?w=600',
      discount: 29.0,
      tags: ['Limited', 'Eco-Friendly'],
    ),
    ProductModel(
      id: '117',
      name: 'Neon Sunglasses',
      category: 'Urban',
      description: 'Classic sunglasses with a sleek frame and UV protection.',
      price: 194.99,
      imageUrl:
          'https://images.unsplash.com/photo-1542282088-fe8426682b8f?w=600',
      tags: ['Polarized', 'Kids', 'New'],
    ),
    ProductModel(
      id: '118',
      name: 'Drift Sunglasses',
      category: 'Lifestyle',
      description: 'Reflective lenses paired with a durable standout frame.',
      price: 165.5,
      imageUrl:
          'https://images.unsplash.com/photo-1473496169904-658ba7c44d8a?w=600',
      tags: ['Exclusive', 'Handmade', 'Bestseller'],
    ),
    ProductModel(
      id: '119',
      name: 'Everyday Specs',
      category: 'Premium Eyewear',
      description: 'Flexible frames with UV protection built to last.',
      price: 97.0,
      imageUrl:
          'https://images.unsplash.com/photo-1577803645773-f96470509666?w=600',
      discount: 6.0,
      tags: ['Premium', 'Classic'],
    ),
  ];
}
