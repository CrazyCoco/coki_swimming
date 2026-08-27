class CokiSwimmingSeedUser {
  const CokiSwimmingSeedUser({
    required this.name,
    required this.avatarAsset,
    required this.postImageAssets,
    required this.postCaption,
    required this.postComment,
    required this.biography,
    this.videoAsset,
    this.videoCaption,
    this.videoComment,
  });

  final String name;
  final String avatarAsset;
  final List<String> postImageAssets;
  final String postCaption;
  final String postComment;
  final String biography;
  final String? videoAsset;
  final String? videoCaption;
  final String? videoComment;

  bool get hasVideo => videoAsset != null;
}

const String cokiSwimmingSeedAccountEmail = 'cokiswimming@gmail.com';
const String cokiSwimmingSeedAccountPassword = '123456';

const List<CokiSwimmingSeedUser> cokiSwimmingSeedUsers = [
  CokiSwimmingSeedUser(
    name: 'Iris',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_iris_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_iris_post.jpeg',
    ],
    postCaption: 'Immersed in water, just unwind for a while',
    postComment: 'Water therapy hits different',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_iris_video.mp4',
    videoCaption: 'Dive into the pool and enjoy the relaxation in water',
    videoComment: 'Swimming is such a great stress reliever',
    biography: 'Free to swim when time permits',
  ),
  CokiSwimmingSeedUser(
    name: 'Luna',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_luna_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_luna_post.jpeg',
    ],
    postCaption: 'simple little joy',
    postComment: 'Swimming is so healing',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_luna_video.mp4',
    videoCaption: 'Ordinary day at the swimming pool, simple time in water',
    videoComment: 'Love the feeling of being in water',
    biography: 'Ordinary days, keep moving',
  ),
  CokiSwimmingSeedUser(
    name: 'Zoe',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_zoe_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_zoe_post.jpeg',
    ],
    postCaption: 'Leave all worries beneath the water',
    postComment: 'Water is such a good escape',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_zoe_video.mp4',
    videoCaption: 'Let go of distractions, glide slowly along the lanes',
    videoComment: 'Total immersive vibe',
    biography: 'Enjoy short relaxation in the water',
  ),
  CokiSwimmingSeedUser(
    name: 'Elena',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_elena_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_elena_post.jpeg',
    ],
    postCaption: 'Today\'s time in the water',
    postComment: 'Wish I could stay longer',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_elena_video.mp4',
    videoCaption: 'Ripples flowing, a short escape from reality',
    videoComment: 'Such a calming clip',
    biography: 'Exercise is just part of life',
  ),
  CokiSwimmingSeedUser(
    name: 'Hazel',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_hazel_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_hazel_post.jpeg',
    ],
    postCaption: 'Go with the flow in the water',
    postComment: 'Love this slow-motion feeling',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_hazel_video.mp4',
    videoCaption: 'Little moments captured at the indoor pool',
    videoComment: 'Simple daily moments are nice',
    biography: 'Love quiet moments in the pool',
  ),
  CokiSwimmingSeedUser(
    name: 'Clara',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_clara_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_clara_post.jpeg',
    ],
    postCaption: 'moment of relaxation',
    postComment: 'Perfect for hot days',
    biography: 'Finding calm in every swim',
  ),
  CokiSwimmingSeedUser(
    name: 'Noah',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_noah_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_noah_post.jpeg',
    ],
    postCaption: 'Immerse myself in the peace of water',
    postComment: 'Enjoy every second',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_noah_video.mp4',
    videoCaption: 'Stay with water, wash away all tiredness',
    videoComment: 'Feels refreshed after swimming',
    biography: 'Swim a few laps to release tiredness',
  ),
  CokiSwimmingSeedUser(
    name: 'Miles',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_miles_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_miles_post.jpeg',
    ],
    postCaption: 'Head to the water and feel free',
    postComment: 'Who understands this joy',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_miles_video.mp4',
    videoCaption: 'Jump into water for a different breathing rhythm',
    videoComment: 'Mood gets better after exercise',
    biography: 'Pool eases daily trivial stuff',
  ),
  CokiSwimmingSeedUser(
    name: 'Kai',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_kai_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_kai_post.jpeg',
    ],
    postCaption: 'A short escape under water',
    postComment: 'I really like this feeling',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_kai_video.mp4',
    videoCaption: 'Swim back and forth, just an ordinary fitness day',
    videoComment: 'Really authentic daily clip',
    biography: 'Focus on my own daily life',
  ),
  CokiSwimmingSeedUser(
    name: 'Owen',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_owen_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_owen_post.jpeg',
    ],
    postCaption: 'No rush, just glide through water',
    postComment: 'Best way to clear your mind',
    videoAsset: 'coki_swimming_assets/coki_swimming_seed_owen_video.mp4',
    videoCaption: 'Finish swimming and leave feeling light-hearted',
    videoComment: 'Envy this lifestyle',
    biography: 'Work hard, exercise to unwind',
  ),
  CokiSwimmingSeedUser(
    name: 'Felix',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_felix_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_felix_post.jpeg',
    ],
    postCaption: 'Little vibe moments by the water',
    postComment: 'Nice capture',
    biography: 'Training, swimming, and good energy',
  ),
  CokiSwimmingSeedUser(
    name: 'Dylan',
    avatarAsset: 'coki_swimming_assets/coki_swimming_seed_dylan_avatar.jpeg',
    postImageAssets: [
      'coki_swimming_assets/coki_swimming_seed_dylan_post_1.jpeg',
      'coki_swimming_assets/coki_swimming_seed_dylan_post_2.jpeg',
    ],
    postCaption: 'Dive in and let tiredness fade away',
    postComment: 'Makes me want to swim',
    biography: 'Always looking for the next swim',
  ),
];
