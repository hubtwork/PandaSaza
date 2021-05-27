//
//  AppState.swift
//  PandaSaza-ios
//
//  Created by 허재 on 2021/05/25.
//

import SwiftUI
import Combine

struct AppState: Equatable {
    var userData = UserData()
    var routes = ViewRoutes()
    var system = System()
    var loadedData = LoadedData()
    
    // MARK:- TODO
    
    //var permissions = Permissions()
}


// MARK: - Loaded Data
extension AppState {
    struct LoadedData: Equatable {
        var loadedPage: Int = 0
    }
}

// MARK: - User Data
extension AppState {
    struct UserData: Equatable {
        
        // if tokens are not nil, It means user signed.
        //
        // it will refresh Top View Container
        var tokens: Tokens? = nil
        
        
    }
}

// MARK: - View Routings
extension AppState {
    struct ViewRoutes: Equatable {
        var selectedTab: Int = 0
        
    }
}

// MARK: - System Properties
extension AppState {
    struct System: Equatable {
        var keyboardHeight: CGFloat = 0
        var isActive: Bool = true
        var currentFont: String = "NanumGothic"
        
        /*
         System Setting Flow
         
         1. Already has Login History ( Phone )
         
         2. Sign Process ( Regis†er )
         
         3. Sign Process ( LogIn )
         */
        var isSigned: Bool = false
    }
}

// MARK: - Permission Manager
extension AppState {
    /*
    struct Permissions: Equatable {
        var push: Permission.Status = .unknown
    }
    
    static func permissionKeyPath(for permission: Permission) -> WritableKeyPath<AppState, Permission.Status> {
        let pathToPermissions = \AppState.permissions
        switch permission {
        case .pushNotifications:
            return pathToPermissions.appending(path: \.push)
        }
    }
     */
}

// MARK: - AppState Comprehension

func == (lhs: AppState, rhs: AppState) -> Bool {
    return lhs.userData == rhs.userData &&
        lhs.routes == rhs.routes &&
        lhs.system == rhs.system &&
        lhs.loadedData == rhs.loadedData
        // lhs.permissions == rhs.permissions
}

#if DEBUG
extension AppState {
    static var preview: AppState {
        var state = AppState()
        state.system.isActive = true
        return state
    }
}
#endif