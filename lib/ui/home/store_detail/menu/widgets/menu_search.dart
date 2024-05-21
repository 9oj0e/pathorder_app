import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/menu_page_view_model.dart';

class MenuSearch extends ConsumerStatefulWidget {
  @override
  _MenuSearchState createState() => _MenuSearchState();
}

class _MenuSearchState extends ConsumerState<MenuSearch> {
  TextEditingController _searchController = TextEditingController();

  void _onSearchChanged(String query) {
    ref.read(menuSearchProvider.notifier).state = query;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search menu',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
        onChanged: _onSearchChanged,
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
