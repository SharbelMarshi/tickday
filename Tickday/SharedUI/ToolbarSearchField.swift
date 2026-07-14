import SwiftUI

/// Capsule-shaped toolbar search field with an integrated close button.
struct ToolbarSearchField: View {
    let prompt: String
    @Binding var text: String
    let close: () -> Void
    @FocusState private var focused: Bool

    var body: some View {
        HStack(spacing: 6) {
            TextField(prompt, text: $text)
                .textFieldStyle(.plain)
            Button(action: close) {
                Image(systemName: "xmark")
                    .font(.system(size: 9, weight: .bold))
                    .foregroundStyle(.secondary)
                    .padding(4)
                    .background(.quaternary.opacity(0.6), in: Circle())
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Close search")
        }
        .focused($focused)
        .padding(.leading, 10)
        .padding(.trailing, 3)
        .padding(.vertical, 3)
        .background(.background.opacity(0.6), in: Capsule())
        .overlay(Capsule().strokeBorder(.quaternary, lineWidth: 1))
        .frame(width: 230)
        .onAppear { focused = true }
        .onExitCommand(perform: close)
    }
}
