//
//  CodableUserDefaults.swift
//  CodableUserDefaults
//
//  Created by Olar's Mac on 8/13/19.
//  Copyright © 2019 Adie Olalekan. All rights reserved.
//

import Foundation

public final class CodableUserDefaults {
    var defaults = UserDefaults.standard
    
    public func saveArray<T: Equatable>(type data: T, key: String) where T: Codable {
        var saveArraData: [T] = getAllData(key: key)
        if saveArraData.contains(data) {
            saveArraData.remove(at: saveArraData.firstIndex(of: data)!)
        } else {
            saveArraData.append(data)
        }
        let encoder = JSONEncoder()
        do {
//        encoder.keyEncodingStrategy = .convertToSnakeCase
            let encoded = try encoder.encode(saveArraData)
            defaults.set(encoded, forKey: key)
            defaults.synchronize()
        } catch let error {
            fatalError("fatal encoded \(error))")
        }
        
    }
    
    public func save<T: Equatable>(type data: T, key: String) where T: Codable {
        var saveArraData: [T] = getAllData(key: key)
        if saveArraData.contains(data) {
            saveArraData.remove(at: saveArraData.firstIndex(of: data)!)
        } else {
            saveArraData.append(data)
        }
        let encoder = JSONEncoder()
        do {
//        encoder.keyEncodingStrategy = .convertToSnakeCase
            let encoded = try encoder.encode(saveArraData)
            defaults.set(encoded, forKey: key)
            defaults.synchronize()
        } catch let error {
            fatalError("fatal encoded \(error)) boom")
        }
        
    }
    
    public func edit<T>(dataPass: T, index: Int, key: String) where T: Codable {
        var array: [T] = getAllData(key: key)
        array[index] = dataPass
        defaults.setValue(array, forKey: key)
    }
    
    public func clear(key: String) {
        defaults.removeObject(forKey: key)
    }
    
    public func getAllData<T>(key: String) -> [T] where T: Codable {
        if defaults.value(forKey: key) == nil {
            let array = [T]()
            return array
        }
        if let objects = defaults.data(forKey: key) {
            
            let decoder = JSONDecoder()
            do {
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let objectsDecoded = try decoder.decode([T].self, from: objects)
                print("(BOUNCEE CC) objects \(objectsDecoded)) boom")
                return objectsDecoded
            } catch let error {
                fatalError("(BOUNCEE CC) fatal \(error)) boom")
            }
            
        } else {
            let array = [T]()
            return array
        }
    }

}
