//
//  Eventos+CoreDataProperties.swift
//  aprendiendo
//
//  Created by Alberto Banet Masa on 2/11/23.
//
//

import Foundation
import CoreData


extension Eventos {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Eventos> {
        return NSFetchRequest<Eventos>(entityName: "Eventos")
    }

    @NSManaged public var id: Int64
    @NSManaged public var descripcion: String?
    @NSManaged public var tiene: NSSet?

}

// MARK: Generated accessors for tiene
extension Eventos {

    @objc(addTieneObject:)
    @NSManaged public func addToTiene(_ value: Ocurrencias)

    @objc(removeTieneObject:)
    @NSManaged public func removeFromTiene(_ value: Ocurrencias)

    @objc(addTiene:)
    @NSManaged public func addToTiene(_ values: NSSet)

    @objc(removeTiene:)
    @NSManaged public func removeFromTiene(_ values: NSSet)

}

extension Eventos : Identifiable {

}
