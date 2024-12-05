//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Gaurav Mourya on 04/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.id){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
            }
            }
            .navigationTitle("FrameWorks")
            .sheet(isPresented: $viewModel.isShowingDetailView)
            {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
           
        
            
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
