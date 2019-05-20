import 'package:cloud_firestore/cloud_firestore.dart';


 
class FirestoreProvider{
  Firestore _store=Firestore.instance;

  Stream<QuerySnapshot>getItems(){
    return _store.collection('reservelist').snapshots();

  }
  
  Future<DocumentReference> addItems(Map<String, dynamic>item){
    return _store.collection('reservelist').add(item);
    }
  Future<void> updateItem(String id, Map item){
    return _store.collection('reservelist').document(id).setData(item);
  }
 void delete(id){
   _store.collection('reservelist').document(id).delete();
 }
}

class FirestoreProviderDoc{
  Firestore _store=Firestore.instance;

  Stream<QuerySnapshot>getItems(){
    return _store.collection('Doctorreservelist').snapshots();

  }
  
  Future<DocumentReference> addItems(Map<String, dynamic>item){
    return _store.collection('Doctorreservelist').add(item);
    }
  Future<void> updateItem(String id, Map item){
    return _store.collection('Doctorreservelist').document(id).setData(item);
  }
 void delete(id){
   _store.collection('Doctorreservelist').document(id).delete();
 }
}

class FirestoreProviderAir{
  Firestore _store=Firestore.instance;

  Stream<QuerySnapshot>getItems(){
    return _store.collection('flightreservelist').snapshots();

  }
  
  Future<DocumentReference> addItems(Map<String, dynamic>item){
    return _store.collection('flightreservelist').add(item);
    }
  Future<void> updateItem(String id, Map item){
    return _store.collection('flightreservelist').document(id).setData(item);
  }
 void delete(id){
   _store.collection('flightreservelist').document(id).delete();
 }
}

