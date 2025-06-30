//
//MIT License
//
//Copyright © 2025 Cong Le
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.
//
//
//  IITQuantityView.swift
//  Quantity_in_IIT
//
//  Created by Cong Le on 6/30/25.
//

import SwiftUI

/// A SwiftUI view that provides a visual and conceptual explanation of the first problem
/// of consciousness as defined by the Information Integration Theory (IIT): determining its quantity.
///
/// This view details the core concepts of differentiation and integration using the theory's
/// key analogy (photodiode vs. camera vs. brain). It also presents a conceptual code
/// structure for calculating Φ (Phi), the measure of integrated information.
///
/// The content and structure are based on the formalisms developed by Giulio Tononi and his colleagues.
/// All scientific claims are cited and referenced according to the Chicago Manual of Style.
struct IITQuantityView: View {
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                // MARK: - Header
                Text("🧠 Problem 1: Quantity of Consciousness")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                
                Text("The first major challenge in understanding consciousness is to determine what makes a system conscious and to what degree. _Information Integration Theory_ (IIT) proposes that the quantity of consciousness is a measure of a system's capacity to integrate information (Tononi 2004).")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Divider()

                // MARK: - The Core Analogy: Differentiation vs. Integration
                Text("The Analogy: Differentiation vs. Integration")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("IIT uses a powerful analogy to distinguish between systems with high information but low consciousness, and those with high consciousness. The key is not just having many possible states (**differentiation**), but that these states are bound together in a unified whole (**integration**).")
                    .padding(.bottom, 10)

                HStack(alignment: .top, spacing: 15) {
                    SystemView(
                        title: "1. The Photodiode",
                        iconName: "lightbulb.fill",
                        color: .gray,
                        differentiationText: "Low (2 states: on/off)",
                        integrationText: "Trivial (a single element)",
                        phiText: "Φ ≈ 0"
                    )
                    
                    SystemView(
                        title: "2. The Digital Camera",
                        iconName: "camera.fill",
                        color: .blue,
                        differentiationText: "Extremely High (2¹'⁰⁰⁰'⁰⁰⁰ states)",
                        integrationText: "Extremely Low (pixels are independent)",
                        phiText: "Φ ≈ 0"
                    )
                    
                    SystemView(
                        title: "3. The Brain",
                        iconName: "brain.head.profile",
                        color: .purple,
                        differentiationText: "Extremely High (vast neural states)",
                        integrationText: "Extremely High (unified experience)",
                        phiText: "Φ > 0 (High)"
                    )
                }
                
                Divider()
                
                // MARK: - The Φ (Phi) Value
                Text("Measuring Integration: Φ (Phi)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("To quantify integrated information, IIT introduces **Φ (Phi)**. It measures how much a system, as a whole, is causally constrained by its parts—more than the parts constrain each other independently. A high Φ value indicates a high level of consciousness.")
                    .padding(.bottom, 10)
                
                Text("Calculating Φ involves finding the system's informational 'weakest link'—the **Minimum Information Bipartition (MIB)**. Φ is the amount of effective information (EI) that can be exchanged across this weakest link (Tononi and Sporns 2003).")

                // MARK: - Conceptual Code for Phi Calculation
                GroupBox {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Conceptual Swift Logic for Φ")
                            .font(.headline)
                        
                        Text("This code outlines the *logic* of the Φ calculation, not a runnable implementation.")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding(.bottom, 5)
                        
                        CodeBlock(content: phiCalculationLogic)
                    }
                }
                
                Divider()
                
                // MARK: - The Main Complex
                Text("The Main Complex")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("For any given system, the substrate of consciousness is the **main complex**: the set of elements with the absolute maximum value of Φ. Elements outside this complex, like sensory nerves or motor outputs, do not directly contribute to the experience, even if they are causally connected to it (Tononi 2004).")
                
                // MARK: - References
                GroupBox {
                    VStack(alignment: .leading) {
                        Text("References")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        Text(
                            """
                            Tononi, Giulio. 2004. “An Information Integration Theory of Consciousness.” *BMC Neuroscience* 5 (1): 42. https://doi.org/10.1186/1471-2202-5-42.
                            
                            Tononi, Giulio, and Olaf Sporns. 2003. “Measuring Information Integration.” *BMC Neuroscience* 4 (1): 31. https://doi.org/10.1186/1471-2202-4-31.
                            """
                        )
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    }
                }
                .padding(.top)
            }
            .padding()
        }
    }
    
    /// A string containing the conceptual pseudo-code for calculating Φ.
    private var phiCalculationLogic: String {
        """
        /// Represents a system of interconnected elements.
        struct NeuralSystem {
            let elements: Set<NeuralElement>
        }

        /// A conceptual algorithm to calculate integrated information (Φ).
        struct PhiCalculator {
            
            /// Calculates the Φ value for a given system.
            /// - Returns: The amount of integrated information (consciousness).
            static func calculatePhi(for system: NeuralSystem) -> Double {
                
                // 1. Identify all possible ways to split the system in two (bipartitions).
                let allBipartitions = system.generateAllBipartitions()
                var minNormalizedEI: Double = .infinity
                var mibEI: Double = 0.0

                // 2. For each split, calculate the `Effective Information` (EI) across the cut.
                // EI measures how much one part constrains the state of the other.
                for partition in allBipartitions {
                    // This is the computationally hardest step.
                    let ei = calculateEffectiveInformation(across: partition)
                    
                    // Normalize to find the "weakest" informational link.
                    let normalizedEI = normalize(ei, for: partition)
                    
                    if normalizedEI < minNormalizedEI {
                        minNormalizedEI = normalizedEI
                        mibEI = ei // This is the Φ for this partition.
                    }
                }
                
                // 3. Φ is the EI of the "weakest link" (Minimum Information Bipartition).
                // A high value means the system cannot be reduced to its parts
                // without a great loss of causal information.
                return mibEI
            }
            
            // ... Helper functions (conceptual)
            private static func calculateEffectiveInformation(across partition: Bipartition) -> Double { /* ... */ return 0.0 }
            private static func normalize(_ ei: Double, for partition: Bipartition) -> Double { /* ... */ return 0.0 }
        }
        """
    }
}

// MARK: - Reusable Sub-views

/// A view that displays information about one of the systems in the IIT analogy.
private struct SystemView: View {
    let title: String
    let iconName: String
    let color: Color
    let differentiationText: String
    let integrationText: String
    let phiText: String
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: iconName)
                .font(.largeTitle)
                .foregroundColor(color)
                .frame(height: 40)
            
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.center)
            
            VStack(alignment: .leading, spacing: 8) {
                InfoRow(label: "Differentiation:", value: differentiationText)
                InfoRow(label: "Integration:", value: integrationText)
                InfoRow(label: "Φ (Phi) Value:", value: phiText, valueColor: color)
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(12)
    }
}

/// A helper view to display a label-value pair.
private struct InfoRow: View {
    let label: String
    let value: String
    var valueColor: Color = .primary
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            Text(value)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(valueColor)
        }
    }
}

/// A view to format a string as a code block.
private struct CodeBlock: View {
    let content: String

    var body: some View {
        Text(content)
            .font(.custom("Menlo", size: 12))
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(UIColor.tertiarySystemBackground))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            )
    }
}


// MARK: - Preview

struct IITQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        IITQuantityView()
    }
}
