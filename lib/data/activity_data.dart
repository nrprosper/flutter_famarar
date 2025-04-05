class ActivityData {
  final String title;
  final String? description;
  final String? time;

  ActivityData({
    required this.title,
    this.description,
    this.time
  });

}


List<ActivityData> activities = [
  ActivityData(
    title: "New user registration",
    time: "2 hours ago"
  ),
  ActivityData(
      title: "Educational content updated",
      description: "Family Planning Guidelines",
      time: "4 hours ago"
  ),
  ActivityData(
      title: "Community outreach milestone",
      description: "1000+ rural users reached",
      time: "Yesterday"
  ),
  ActivityData(
      title: "Voice guidance feature update",
      description: "Added 3 new languages",
      time: "2 days ago"
  )

];