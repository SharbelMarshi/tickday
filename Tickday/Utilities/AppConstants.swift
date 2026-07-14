import Foundation

enum AppConstants {
    /// The app group is prefixed with the Apple Developer Team ID and must match both .entitlements files.
    static let appGroupIdentifier = "JZH2954S3D.com.sharbelmarshi.Tickday"
    static let appBundleIdentifier = "com.sharbelmarshi.Tickday"
    static let widgetBundleIdentifier = "com.sharbelmarshi.Tickday.Widget"
    static let widgetKind = "TickdayDashboardWidget"
    static let urlScheme = "tickday"
    static let sharedStoreName = "Tickday.store"
    static let widgetPagePreferenceKey = "widget.selectedPage"
    static let widgetFirstPagePreferenceKey = "widget.firstPage"
    static let widgetRightToLeftPreferenceKey = "widget.rightToLeft"
    static let countdownPastBehaviorPreferenceKey = "countdown.pastBehavior"
    static let sharedPreferencesDirectoryName = "Preferences"
}
