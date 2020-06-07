//
//  ErgastAPI.swift
//
//
//  Created by Giovanni Noa on 4/28/20.
//

import Foundation

/// Public interface of functions for fetching Formula 1 data from the Ergast REST API.
public enum ErgastAPI {
    /// Fetches Formula 1 Circuits for a given year.
    /// - Parameters:
    ///   - season: Season enum case, specified by an Int, which indicates to fetch data for a given year (1950-2020).
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func circuits(for season: SeasonYear,
                                limit: String? = nil,
                                offset: String? = nil,
                                completion: @escaping (Result<Circuits, ErgastAPIError>) -> Void) {
        
        URLSession.shared.fetch(.circuits,
                               for: season, limit: limit, offset: offset) { result in
            completion(result)
        }
    }
    
    /// Fetches Formula 1 Circuits for all seasons throughout history.
    /// - Parameters:
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func allCircuits(limit: String? = nil,
                                   offset: String? = nil,
                                   completion: @escaping (Result<Circuits, ErgastAPIError>) -> Void) {
        
        URLSession.shared.fetch(.circuits,
                                limit: limit,
                                offset: offset) { result in
            completion(result)
        }
    }
    
    /// Fetches Formula 1 Seasons throughout history.
    /// - Parameters:
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func seasons(limit: String? = nil,
                               offset: String? = nil,
                               completion: @escaping (Result<Seasons, ErgastAPIError>) -> Void) {
        
        URLSession.shared.fetch(.seasons,
                                limit: limit,
                                offset: offset) { result in
            completion(result)
        }
    }
    
    /// Fetches Formula 1 Constructors for all seasons throughout history.
    /// - Parameters:
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func allConstructors(limit: String? = nil,
                                       offset: String? = nil,
                                       completion: @escaping (Result<Constructors, ErgastAPIError>) -> Void) {
        
        URLSession.shared.fetch(.constructors,
                                limit: limit,
                                offset: limit) { result in
            completion(result)
        }
    }
    
    /// Fetches Formula 1 Constructors for all seasons throughout history.
    /// - Parameters:
    ///   - season: Season enum case, specified by an Int, which indicates to fetch data for a given year (1950-2020).
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func constructors(for season: SeasonYear,
                                    limit: String? = nil,
                                    offset: String? = nil,
                                    completion: @escaping (Result<Constructors, ErgastAPIError>) -> Void) {
        
        URLSession.shared.fetch(.constructors,
                                for: season,
                                limit: limit,
                                offset: limit) { result in
            completion(result)
        }
    }
    
    /// Fetches Formula 1 Race Schedule for a given year.
    /// - Parameters:
    ///   - season: Season enum case, specified by an Int, which indicates to fetch data for a given year (1950-2020).
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func raceSchedule(for season: SeasonYear,
                                    limit: String? = nil,
                                    offset: String? = nil,
                                    completion: @escaping (Result<RaceSchedule, ErgastAPIError>) -> Void) {

        URLSession.shared.fetch(.raceSchedule,
                                for: season,
                                limit: limit,
                                offset: offset) { result in
            completion(result)
        }
    }
    
    /// Fetches Formula 1 Race Results for a given year.
    /// - Parameters:
    ///   - season: Season enum case, specified by an Int, which indicates to fetch data for a given year (1950-2020).
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func raceResults(for season: SeasonYear,
                                   limit: String? = nil,
                                   offset: String? = nil,
                                   completion: @escaping(Result<RaceResults, ErgastAPIError>) -> Void) {
        
        URLSession.shared.fetch(.raceResults,
                                for: season,
                                limit: limit,
                                offset: offset) { result in
            completion(result)
        }
    }
    
    /// Fetches Qualifying Results for a given year.
    /// - Parameters:
    ///   - season: Season enum case, specified by an Int, which indicates to fetch data for a given year (1950-2020).
    ///   - limit: Optional property to specify number of items to return per request.
    ///   - offset: Optional property to indicate starting point of elements from API request.
    ///   - completion: Asynchronous closure to inject functionality once the network interaction completes.
    public static func qualifyingResults(for season: SeasonYear,
                                         limit: String? = nil,
                                         offset: String? = nil,
                                         completion: @escaping (Result<QualifyingResults, ErgastAPIError>) -> Void) {
        
        URLSession.shared.fetch(.qualifyingResults,
                                for: season,
                                limit: limit,
                                offset: offset) { result in
            completion(result)
        }
    }
}

