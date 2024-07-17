import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';
import 'package:session2/widgets/row_listView.dart';
import 'package:session2/widgets/search_widget.dart';
import 'package:session2/widgets/title_widget.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

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
        title: const TitleWidget(title: 'Market'),
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
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SearchWidget(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            SliverToBoxAdapter(
              child: RowListview(title: 'Hot Deals'),
            ),
            SliverToBoxAdapter(
              child: RowListview(title: 'Trending'),
            ),
            SliverToBoxAdapter(
              child: RowListview(title: 'Deals'),
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
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: const Color(0xFFE8E8E8),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // To display all icons
      ),
    );
  }
}
