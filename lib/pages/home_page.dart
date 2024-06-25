import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teda_toga/components/my_atribut_tile.dart';
import 'package:teda_toga/components/my_current_location.dart';
import 'package:teda_toga/components/my_description_box.dart';
import 'package:teda_toga/components/my_drawer.dart';
import 'package:teda_toga/components/my_sliver_app_bar.dart';
import 'package:teda_toga/components/my_tab_bar.dart';
import 'package:teda_toga/models/atribut.dart';
import 'package:teda_toga/models/wisuda.dart';
import 'atribut_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: AtributCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort list atribut item yang termasuk dalam kategori tertentu
  List<Atribut> _filterAtributByCategory(
      AtributCategory category, List<Atribut> fullMenu) {
    return fullMenu.where((atribut) => atribut.category == category).toList();
  }

  // return list atribut ke kategori tertenru
  List<Widget> getAtributInThisCategory(List<Atribut> fullMenu) {
    return AtributCategory.values.map((category) {
      // get kategori menu
      List<Atribut> categoryMenu = _filterAtributByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual atribut
          final atribut = categoryMenu[index];

          // reeturn atribut tile UI
          return AtributTile(
            atribut: atribut,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AtributPage(atribut: atribut),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my current location
                const MyCurrentLocation(),

                // deskripsi box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Wisuda>(
          builder: (context, wisuda, child) => TabBarView(
            controller: _tabController,
            children: getAtributInThisCategory(wisuda.menu),
          ),
        ),
      ),
    );
  }
}
