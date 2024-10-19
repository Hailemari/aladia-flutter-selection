import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'components/atoms/custom_text_field.dart';
import 'components/atoms/custom_button.dart';
import 'components/atoms/logo_image.dart';
import 'components/molecules/login_form.dart';
import 'components/molecules/social_login_buttons.dart';
import 'components/organisms/login_organism.dart';
import 'components/pages/login_page.dart';
import 'components/templates/login_template.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Widgetbook(
          directories: [
            WidgetbookFolder(
              name: 'Atoms',
              children: [
                WidgetbookComponent(
                  name: 'Custom Text Field',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => CustomTextField(
                        label: 'Email',
                        controller: TextEditingController(),
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Custom Button',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => CustomButton(
                        text: 'Click me',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Logo Image',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const LogoImage(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Molecules',
              children: [
                WidgetbookComponent(
                  name: 'Login Form',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => LoginForm(
                        formKey: GlobalKey<FormState>(),
                        emailController: TextEditingController(),
                        passwordController: TextEditingController(),
                        onLogin: () {},
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Social Login Buttons',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const SocialLoginButtons(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Organisms',
              children: [
                WidgetbookComponent(
                  name: 'Login Organism',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => LoginOrganism(
                        formKey: GlobalKey<FormState>(),
                        emailController: TextEditingController(),
                        passwordController: TextEditingController(),
                        onLogin: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Templates',
              children: [
                WidgetbookComponent(
                  name: 'Login Template',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => LoginTemplate(
                        formKey: GlobalKey<FormState>(),
                        emailController: TextEditingController(),
                        passwordController: TextEditingController(),
                        onLogin: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Pages',
              children: [
                WidgetbookComponent(
                  name: 'Login Page',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const LoginPage(),
                    ),
                  ],
                ),
              ],
            ),
          ],
          addons: [
            MaterialThemeAddon(
              themes: [
                WidgetbookTheme(name: 'Light', data: ThemeData.light()),
                WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
