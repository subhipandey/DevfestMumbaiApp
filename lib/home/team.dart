class TeamsData {
  List<Team> teams;

  TeamsData({this.teams});

  TeamsData.fromJson(Map<String, dynamic> json) {
    if (json['teams'] != null) {
      teams = new List<Team>();
      json['teams'].forEach((v) {
        teams.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String name;
  String image;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;

  Team(
      {this.name,
      this.image,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      });

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    return data;
  }
}

List<Team> teams = [
  Team(
    name: "Ali Mustafa",
    image:
        "https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2FIMG-20190728-WA0003-01%20-%20Ali%20Mustufa%20Shaikh.jpeg?alt=media&token=d7076d7c-1838-47f7-8214-8c19a210f8d4", //Mandatory eg("http://devfest.gdgsiliguri.org/img/team/NehaBhowmick.jpg",
    fbUrl: 'https://www.facebook.com/iali.dev',
    linkedinUrl: 'https://linkedin.com/in/ialimustufa/',
    twitterUrl: 'https://twitter.com/ialimustufa'
  ),
];