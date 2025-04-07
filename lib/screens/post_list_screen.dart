import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pexa_test/widgets/common_appbar.dart';
import 'package:http/http.dart' as http;

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  _PostListScreenState createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  List posts = [];
  int visibleCount = 10;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    fetchPosts();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void fetchPosts() async {
    final res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (res.statusCode == 200) {
      final data = json.decode(res.body);
      setState(() => posts = data);
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      if (visibleCount < posts.length) {
        setState(() => visibleCount += 10);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "Posts"),
      body:
          posts.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                controller: _scrollController,
                itemCount: visibleCount > posts.length ? posts.length : visibleCount,
                itemBuilder: (_, i) {
                  final post = posts[i];
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Theme.of(context).colorScheme.secondaryContainer, Theme.of(context).colorScheme.primaryContainer],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(2, 2))],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_circle, color: Theme.of(context).colorScheme.primary),
                              SizedBox(width: 8),
                              Text("User ID: ${post['userId']}", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text("Post ID: ${post['id']}", style: TextStyle(color: Colors.grey.shade600)),
                          SizedBox(height: 10),
                          Text(post['title'], style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text(post['body'], style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.5)),
                        ],
                      ),
                    ),
                  );
                },
              ),
    );
  }
}
