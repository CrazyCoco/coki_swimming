import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'coki_swimming_app/coki_swimming_app_routes/coki_swimming_app_routes_paths.dart';
import 'coki_swimming_media/coki_swimming_media_avatar_service.dart';
import 'coki_swimming_storage/coki_swimming_storage_database.dart';
import 'coki_swimming_widgets/coki_swimming_widgets_avatar_image.dart';

part 'coki_swimming_app/coki_swimming_app.dart';
part 'coki_swimming_app/coki_swimming_app_access_gate.dart';
part 'coki_swimming_network/coki_swimming_network_config.dart';
part 'coki_swimming_purchases/coki_swimming_purchases_catalog.dart';
part 'coki_swimming_purchases/coki_swimming_purchases_store_service.dart';
part 'coki_swimming_security/coki_swimming_security_crypto_config.dart';
part 'coki_swimming_pages/coki_swimming_pages_access.dart';
part 'coki_swimming_pages/coki_swimming_pages_call.dart';
part 'coki_swimming_pages/coki_swimming_pages_clip.dart';
part 'coki_swimming_pages/coki_swimming_pages_companion.dart';
part 'coki_swimming_pages/coki_swimming_pages_compose.dart';
part 'coki_swimming_pages/coki_swimming_pages_concern.dart';
part 'coki_swimming_pages/coki_swimming_pages_detail.dart';
part 'coki_swimming_pages/coki_swimming_pages_dialogue.dart';
part 'coki_swimming_pages/coki_swimming_pages_edit.dart';
part 'coki_swimming_pages/coki_swimming_pages_eula.dart';
part 'coki_swimming_pages/coki_swimming_pages_form.dart';
part 'coki_swimming_pages/coki_swimming_pages_home.dart';
part 'coki_swimming_pages/coki_swimming_pages_hub.dart';
part 'coki_swimming_pages/coki_swimming_pages_inbox.dart';
part 'coki_swimming_pages/coki_swimming_pages_landing.dart';
part 'coki_swimming_pages/coki_swimming_pages_media.dart';
part 'coki_swimming_pages/coki_swimming_pages_motion_compose.dart';
part 'coki_swimming_pages/coki_swimming_pages_ocean.dart';
part 'coki_swimming_pages/coki_swimming_pages_people.dart';
part 'coki_swimming_pages/coki_swimming_pages_persona.dart';
part 'coki_swimming_pages/coki_swimming_pages_policy_webview.dart';
part 'coki_swimming_pages/coki_swimming_pages_pulse.dart';
part 'coki_swimming_pages/coki_swimming_pages_recover.dart';
part 'coki_swimming_pages/coki_swimming_pages_setting.dart';
part 'coki_swimming_pages/coki_swimming_pages_signup.dart';
part 'coki_swimming_pages/coki_swimming_pages_splash.dart';
part 'coki_swimming_pages/coki_swimming_pages_swimmer.dart';
part 'coki_swimming_pages/coki_swimming_pages_text.dart';
part 'coki_swimming_pages/coki_swimming_pages_vault.dart';
part 'coki_swimming_pages/coki_swimming_pages_welcome.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_avatar.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_back_button.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_background.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_chip.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_circle.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_float_tool.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_gradient_button.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_gradient_text.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_hero_stat.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_input_dock.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_named_field.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_note_tile.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_plain_button.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_setting_row.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_small_pill.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_stat.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_tab.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_tap.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_text_box.dart';
part 'coki_swimming_widgets/coki_swimming_widgets_top_bar.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_agreement_prompt.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_confirm.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_login_prompt.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_notes_sheet.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_panel.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_permission_prompt.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_photo_source.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_release_sheet.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_report_sheet.dart';
part 'coki_swimming_dialogs/coki_swimming_dialogs_toast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFF100A30),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(await CokiSwimmingApp.create());
}
