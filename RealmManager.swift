////
////  RealmManager.swift
////  D-Braille
////
////  Created by LowVisionProject on 20/06/2023.
////
//
//import Foundation
//import RealmSwift
//
//class RealmManager: ObservableObject {
//    private(set) var localRealm: Realm?
//    @Published private(set) var easyAlphabets: [EasyAlphabets] = []
//
//    init() {
//        openRealm()
//    }
//
//    func openRealm(){
//        do{
//            let config = Realm.Configuration(schemaVersion: 1, migrationBlock: { migration, oldSchemaVersion in
//                if oldSchemaVersion > 1 {
//                    // new schema definition here if needed
//                }
//            })
//
//            Realm.Configuration.defaultConfiguration = config
//
//            localRealm = try Realm()
//        }catch{
//            print("Error opening realm: \(error)")
//        }
//    }
//
//    func addEasyAlphabet(image: String, easyAlpha: String, combination: String) {
//        if let localRealm = localRealm{
//            do {
//                try localRealm.write {
//                    let newEasyAlpha = EasyAlphabets(value:["image": image, "easyAlpha": easyAlpha, "combination": combination ])
//                    localRealm.add(newEasyAlpha)
//                    print("added new alpha: \(newEasyAlpha)")
//                }
//            }catch {
//                print("Error adding easy alphabet to realm: \(error)")
//            }
//        }
//    }
//}
