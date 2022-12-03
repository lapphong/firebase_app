import 'package:flutter/material.dart';

import '../../../assets/assets_path.dart';
import '../../../themes/themes.dart';
import '../../../widgets/stateless/stateless.dart';
import '../widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget buildTextFieldSearch() {
    return TextFieldSearch(
      key: const Key('homePage_searchInput_textField'),
      onChange: (textSearch) => {},
      //debounce.run(() => context.read<SignInCubit>().emailChanged(email)),
      //errorText: state.email.invalid ? 'Email is valid' : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AvatarHome(url: AssetPath.imgAvatar),
                    BellButton(),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Hi, Michael Owen', style: TxtStyle.headline2),
                Text(
                  'Welcome back to Ontari, Explore Course',
                  style: TxtStyle.headline5
                      .copyWith(color: DarkTheme.greyScale500),
                ),
                buildTextFieldSearch(),
                const SizedBox(height: 20),
                const Discount(),
                buildTitleContentHome('Best Mentor', 'See all'),
                const SizedBox(height: 14),
                //buildListMentors(),
                const SizedBox(height: 20),
                buildTitleContentHome('Class Preview', 'See all'),
                const SizedBox(height: 14),
                //buildGridViewPreview(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // GridView buildGridViewPreview() {
  //   return GridView.count(
  //     crossAxisCount: 2,
  //     shrinkWrap: true,
  //     mainAxisSpacing: 23,
  //     crossAxisSpacing: 23,
  //     childAspectRatio: 5 / 6.299,
  //     physics: const ScrollPhysics(),
  //     children: preview
  //         .map(
  //           (e) => ClassPreview(
  //             title: e.title,
  //             assetName: e.imageUrl,
  //           ),
  //         )
  //         .toList(),
  //   );
  // }

  // SizedBox buildListMentors() {
  //   return SizedBox(
  //     height: 192,
  //     child: ListView.builder(
  //       itemCount: mentor.length,
  //       scrollDirection: Axis.horizontal,
  //       itemBuilder: (context, index) {
  //         return index == 0
  //             ? Mentor(
  //                 assetName: mentor[index].imageUrl,
  //                 name: mentor[index].name,
  //                 title: mentor[index].title,
  //                 onTap: () {},
  //               )
  //             : Padding(
  //                 padding: const EdgeInsets.only(left: 10.0),
  //                 child: Mentor(
  //                   assetName: mentor[index].imageUrl,
  //                   name: mentor[index].name,
  //                   title: mentor[index].title,
  //                   onTap: () {},
  //                 ),
  //               );
  //       },
  //     ),
  //   );
  // }

  Widget buildTitleContentHome(String textTitle, String textButton) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textTitle, style: TxtStyle.headline3),
        TextButton(
          onPressed: () => {},
          child: Text(
            textButton,
            style: TxtStyle.headline6.copyWith(color: DarkTheme.primaryBlue600),
          ),
        ),
      ],
    );
  }
}
