//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Gaurav Mourya on 05/12/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{isShowingDetailView = true}
    }
    
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())]
    
}
