//
//  Ocurrencias+CoreDataProperties.swift
//  aprendiendo
//
//  Created by Alberto Banet Masa on 2/11/23.
//
//

import Foundation
import CoreData


extension Ocurrencias {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ocurrencias> {
        return NSFetchRequest<Ocurrencias>(entityName: "Ocurrencias")
    }

    @NSManaged public var id: Int64
    @NSManaged public var fecha: Date?
    @NSManaged public var pertenece: Eventos?

}

extension Ocurrencias : Identifiable {

}
