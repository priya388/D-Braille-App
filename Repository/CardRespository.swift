//
//  CardRespository.swift
//  D-Braille
//
//  Created by LowVisionProject on 26/06/2023.
//

//import FirebaseFirestoreSwift
//import FirebaseFirestore
//import Combine
//
//
//final class CardRespository: ObservableObject{
//    private let path = "studyCards"
//    private let store = Firestore.firestore()
//    @Published var studyCards:[StudyCard] = []
//    init(){
//        get()
//    }
//    
//    func get (){
//        store.collection(path).addSnapshotListener{(snapshot, error) in
//            if let error = error {
//                print (error)
//                return
//            }
//            
//                self.studyCards = snapshot?.documents.compactMap {
//                    try?  $0.data(as: StudyCard.self)
//                } ?? []
//        }
//    }
//    func add ( studyCard : StudyCard){
//        do{
//            = try  store.collection(path).addDocument(from: studyCard)
//        } catch {
//            fatalError("Adding a study card failed")
//        }
//       
//    }
//}
