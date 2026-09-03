import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.all(16),

            child: Column(
              children: [
                const SizedBox(height: 50),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
                const SizedBox(height: 10),
                Text(
                  'Nour Eldeen Ali',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'noureldeenali42@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1000 Followers',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),

                    SizedBox(
                      height: 20,
                      child: VerticalDivider(thickness: 2, width: 20),
                    ),
                    Text(
                      '500 Following',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('noureldeenali42@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('+20 1124 0161 30'),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
            title: Text('LinkedIn'),
            subtitle: Text('linkedin.com/in/noureldeenali'),
          ),
        ],
      ),
    );
  }
}
