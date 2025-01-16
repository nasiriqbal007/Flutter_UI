class PostModel {
  final String name;
  final String username;
  final String imageUrl;
  final String description;
  final String tags;
  final String avatarUrl;
  final int likeCount;
  final int shareCount;
  final int commentCount;

  PostModel({
    required this.name,
    required this.username,
    required this.imageUrl,
    required this.description,
    required this.tags,
    required this.avatarUrl,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });
}

List<PostModel> posts = [
  PostModel(
    name: 'Olivia Anderson',
    username: '@olivia_a',
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1672036501672-2f739fe1ba74?q=80&w=1975&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Enjoying a sunny day at the beach!',
    avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg',
    tags: '#sunny #beach #vacation',
    likeCount: 120,
    shareCount: 30,
    commentCount: 25,
  ),
  PostModel(
    name: 'Emma Williams',
    username: '@emma_w',
    imageUrl:
        'https://images.unsplash.com/photo-1489673446964-e1f989187ddc?q=80&w=2010&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Had an amazing dinner tonight!',
    avatarUrl: 'https://randomuser.me/api/portraits/women/2.jpg',
    tags: '#food #dinner #delicious',
    likeCount: 95,
    shareCount: 12,
    commentCount: 40,
  ),
  PostModel(
    name: 'Ava Smith',
    username: '@ava_s',
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1668319914124-57301e0a1850?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'The sunset was breathtaking today.',
    avatarUrl: 'https://randomuser.me/api/portraits/women/3.jpg',
    tags: '#sunset #nature #beautiful',
    likeCount: 450,
    shareCount: 70,
    commentCount: 60,
  ),
  PostModel(
    name: 'Isabella King',
    username: '@isabella_k',
    imageUrl:
        'https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Caught up with old friends today! ',
    avatarUrl: 'https://randomuser.me/api/portraits/women/4.jpg',
    tags: '#friends #reunion #goodtimes',
    likeCount: 325,
    shareCount: 45,
    commentCount: 35,
  ),
];
