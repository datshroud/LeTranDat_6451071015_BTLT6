import 'package:btc7/ex12/utils/app_constants.dart';
import 'package:btc7/ex12/views/trip_detail_screen.dart';
import 'package:btc7/ex12/widgets/trip_step_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _selectedTab = 0;
  int _currentStep = 0;

  static const List<String> _tabTitles = <String>[
    'Ride Home',
    'Trips',
    'Profile',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _onStepAction() async {
    if (_currentStep < AppConstants.steps.length - 1) {
      await _pageController.nextPage(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
      );
      return;
    }

    if (!mounted) {
      return;
    }

    await Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (_) =>
            const TripDetailScreen(summary: AppConstants.sampleSummary),
      ),
    );
  }

  Widget _buildBookingTab() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Luot dat xe gom 3 buoc',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: (_currentStep + 1) / AppConstants.steps.length,
                  ),
                  const SizedBox(height: 8),
                  Text('Buoc ${_currentStep + 1}/${AppConstants.steps.length}'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentStep = page;
              });
            },
            itemCount: AppConstants.steps.length,
            itemBuilder: (BuildContext context, int index) {
              final step = AppConstants.steps[index];
              return Padding(
                padding: const EdgeInsets.all(16),
                child: TripStepCard(
                  step: step,
                  stepNumber: index + 1,
                  totalSteps: AppConstants.steps.length,
                  onAction: _onStepAction,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTripsTab() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: AppConstants.recentTrips.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.route_outlined),
            title: Text(AppConstants.recentTrips[index]),
            subtitle: const Text('Da hoan thanh'),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 12),
    );
  }

  Widget _buildProfileTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CircleAvatar(radius: 32, child: Icon(Icons.person, size: 32)),
                SizedBox(height: 12),
                Text(
                  'Tran Bao',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 8),
                Text('Thanh vien GrabX Plus'),
                SizedBox(height: 4),
                Text('Danh gia: 4.9/5'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = <Widget>[
      _buildBookingTab(),
      _buildTripsTab(),
      _buildProfileTab(),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(_tabTitles[_selectedTab]),
      ),
      body: IndexedStack(index: _selectedTab, children: tabs),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
