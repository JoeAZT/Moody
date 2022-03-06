//
//  HistoricChart.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI
import SwiftUICharts

let chartLegend = Legend(color: .white, label: "")

struct HistoricChart: View {
    
    @ObservedObject var entryStore = JournalEntryStore()
    
    var body: some View {
        
        VStack {
            // Right box
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .opacity(0.075)
                VStack(alignment: .leading) {
                    Text("Your month:")
                        .padding(.bottom)
                    
                    LineChartView(dataPoints: JournalEntryStore.shared.monthlyGraphEntries)
                        .chartStyle(
                            LineChartStyle(
                                lineMinHeight: 1,
                                showAxis: true,
                                axisLeadingPadding: 10,
                                showLabels: true,
                                labelCount: 4,
                                showLegends: false
                            )
                        )
                        .accentColor(.white)
                }
                .padding()
            }
        }
    }
}
