//
//  TaskViewModel.swift
//  AdvancedUI
//
//  Created by Enoxus on 20.09.2020.
//  Copyright © 2020 Enoxus. All rights reserved.
//

import Foundation
import UIKit

struct TaskViewModel {
    
    struct SubLabelConfiguration {
        
        let firstSubLabelImage: String
        let firstSubLabelText: String
        let secondSubLabelImage: String?
        let secondSubLabelText: String?
    }
    
    init(title: String, listType: ListType?, isMarked: Bool, subLabelConfiguration: TaskViewModel.SubLabelConfiguration?, hasLightAppearance: Bool = false) {
        
        self.title = title
        self.listType = listType
        self.isMarked = isMarked
        self.subLabelConfiguration = subLabelConfiguration
        self.hasLightAppearance = hasLightAppearance
    }
    
    let title: String
    let listType: ListType?
    var isMarked: Bool
    let subLabelConfiguration: SubLabelConfiguration?
    let hasLightAppearance: Bool
    
    var isTimed: Bool {
        subLabelConfiguration != nil
    }
}
