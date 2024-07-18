import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';
import 'package:session2/widgets/rowfeed_listview.dart';
import 'package:session2/widgets/search_widget.dart';
import 'package:session2/widgets/title_widget.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
        title: const TitleWidget(
          title: 'Feed',
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Filter',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SearchWidget(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const RowfeedListview(),
                childCount: 4,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 8),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 227.98,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.circle, size: 32), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle, size: 32), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle, size: 32), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle, size: 32), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle, size: 32), label: ""),
        ],
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kSecondaryColor,
        type: BottomNavigationBarType.fixed, // To display all icons
      ),
    );
  }
}
