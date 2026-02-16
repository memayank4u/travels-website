import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/my_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

// VisaSyst-inspired color constants
class AppColors {
  static const navy = Color(0xFF003366);
  static const navyDark = Color(0xFF002244);
  static const turquoise = Color(0xFF17B5B5);
  static const turquoiseLight = Color(0xFFE0F7FA);
  static const turquoiseBg = Color(0xFF14A3A3);
  static const gradientStart = Color(0xFF1A73E8);
  static const gradientEnd = Color(0xFF2EC4B6);
  static const textDark = Color(0xFF1A1A2E);
  static const textGrey = Color(0xFF6B7280);
  static const textLight = Color(0xFF9CA3AF);
  static const cardBg = Colors.white;
  static const pageBg = Color(0xFFF8FAFB);
  static const gold = Color(0xFFFFB800);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TravelGo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.navy,
          brightness: Brightness.light,
          primary: AppColors.navy,
          secondary: AppColors.turquoise,
          tertiary: AppColors.gradientEnd,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: AppColors.pageBg,
        fontFamily: 'Segoe UI',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          iconTheme: IconThemeData(color: AppColors.navy),
          titleTextStyle: TextStyle(
            color: AppColors.navy,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    MyTripsScreen(),
  ];

  bool _isWide(BuildContext context) =>
      MediaQuery.of(context).size.width > 800;

  @override
  Widget build(BuildContext context) {
    if (_isWide(context)) {
      return _buildDesktopLayout();
    }
    return _buildMobileLayout();
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Column(
        children: [
          // Top navigation bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.navy.withValues(alpha: 0.06),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // Logo
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.gradientStart, AppColors.gradientEnd],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'TravelGo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                // Nav items
                _buildNavItem(Icons.explore_outlined, Icons.explore, 'Explore', 0),
                const SizedBox(width: 8),
                _buildNavItem(Icons.airplane_ticket_outlined,
                    Icons.airplane_ticket, 'My Trips', 1),
                const Spacer(),
                // Right side actions
                IconButton(
                  icon: const Icon(Icons.notifications_none_rounded,
                      color: AppColors.navy, size: 22),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.turquoise.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person, color: AppColors.turquoise, size: 22),
                ),
              ],
            ),
          ),
          // Content
          Expanded(child: _screens[_currentIndex]),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      IconData icon, IconData selectedIcon, String label, int index) {
    final isSelected = _currentIndex == index;
    return InkWell(
      onTap: () => setState(() => _currentIndex = index),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.turquoise.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? selectedIcon : icon,
              color: isSelected ? AppColors.navy : AppColors.textGrey,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.navy : AppColors.textGrey,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.navy.withValues(alpha: 0.08),
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (i) => setState(() => _currentIndex = i),
          backgroundColor: Colors.transparent,
          elevation: 0,
          indicatorColor: AppColors.turquoise.withValues(alpha: 0.12),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          height: 68,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.explore_outlined, color: AppColors.textGrey),
              selectedIcon: Icon(Icons.explore, color: AppColors.navy),
              label: 'Explore',
            ),
            NavigationDestination(
              icon: Icon(Icons.airplane_ticket_outlined,
                  color: AppColors.textGrey),
              selectedIcon:
                  Icon(Icons.airplane_ticket, color: AppColors.navy),
              label: 'My Trips',
            ),
          ],
        ),
      ),
    );
  }
}
