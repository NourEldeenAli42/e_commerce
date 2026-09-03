import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paw_print/core/providers/magic_provider.dart';
import 'package:paw_print/core/providers/navigation_provider.dart';
import 'package:paw_print/core/utils/blocking_overlay.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('General', style: TextStyle(fontSize: 18)),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Account'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                context.read<NavigationProvider>().changeTab(4);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
            ),
            ListTile(
              leading: const Icon(Icons.card_giftcard),
              title: const Text('Coupons'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete Account'),
            ),
            Text('Feedback', style: TextStyle(fontSize: 18)),
            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text('Report a bug'),
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: const Text('Send feedback'),
            ),
            Text(
              'Hidden Secret',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/icons/magic_wand.svg',
                height: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              onTap: () {
                context.read<MagicProvider>().toggleMagic();
                BlockingOverlay.show(
                  context,
                  lottieAsset: 'assets/animations/wand.json',
                );
              },

              title: const Text('Apply Magic'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Verve',
                  applicationVersion: '1.0.0',
                  applicationIcon: FlutterLogo(size: 48),
                  children: [
                    const Text(
                      'Verve is a shopping app that helps you find the best products for your needs.',
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
