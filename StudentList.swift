//
//  StudentList.swift
//  D-Braille
//
//  Created by LowVisionProject on 15/06/2023.
//

import SwiftUI

struct StudentList: View {
    @State var students: [String] = [
        "John Smith","Steve Ross","Kelly Will","Jameson William"
    ]
    var body: some View {
        NavigationView {
            List{
                Section(
                    header: HStack {
                        Text("Students")
                    })
                {ForEach(students,id: \.self) {student in
                    Text(student.capitalized)
                    
                        
                }
                    
                    
                .onDelete(perform: delete)
                
                }
            }
            
            
            .navigationTitle("My Classroom")
            .navigationBarItems(leading: EditButton(),
            trailing:
                    NavigationLink("Add Student", destination: Text("Destination")           )
                       
                      
                    
            )
            .accentColor(.init(Color(red: 0, green: 0.102,blue: 0.545)))
            .bold()
        }
     
        
        
    }
    func delete(indexSet: IndexSet) {
        students.remove(atOffsets: indexSet)
        
    }
    
    
    struct StudentList_Previews: PreviewProvider {
        static var previews: some View {
            StudentList()
        }
    }
}
