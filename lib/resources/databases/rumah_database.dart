import 'package:siskamling/resources/models/rumah_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RumahDatabase{
  final SupabaseClient _supabase = Supabase.instance.client;
  final String table = "rumah";

  Future<List<Map<String, dynamic>>> selectAll() async {
    try {
      return await _supabase.from(table).select();
    }catch (e) {
      print(e);
    } return [];
  }

  Future<RumahModel?> select({required String no_rumah}) async {
    try {
      return await _supabase
      .from(table)
      .select()
      .eq("no_rumah", no_rumah)
      .withConverter<RumahModel>((data) => RumahModel.fromMap(data[0]));
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future insert({required RumahModel rumahModel, required RumahModel insertRumah}) async {
    try {
      return await _supabase
      .from(table)
      .insert(rumahModel.toMapInsert())
      .select();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> delete({required String no_rumah, required RumahModel deletedRumah}) async {
    try {
      await _supabase.
      from(table).
      delete(deletedRumah.toMapDelete()).
      eq("no_rumah", no_rumah);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> update({required String no_rumah, required RumahModel updatedRumah}) async {
  try {
    await _supabase
        .from(table)
        .update(updatedRumah.toMapUpdate())
        .eq("no_rumah", no_rumah);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}

}
