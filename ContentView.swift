import SwiftUI

struct ContentView: View {
    let appStoreURL = URL(string: "https://apps.apple.com/app/id6767474937")!

    var body: some View {
        ScrollView {
            VStack(spacing: 28) {

                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 32))

                VStack(spacing: 8) {
                    Text("旅行英会話 - 日本人向け英語学習")
                        .font(.title2.bold())
                        .multilineTextAlignment(.center)

                    Text("海外旅行で使える英語フレーズと発音")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }

                Link(destination: appStoreURL) {
                    Text("App Storeでダウンロード")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 28)
                        .padding(.vertical, 14)
                        .background(.blue)
                        .clipShape(Capsule())
                }

                FeatureCard(
                    title: "パッと調べて、サッと話せる！",
                    body: "600フレーズ以上の旅行英会話。\nオフライン対応＆ゆっくり音声で、聞き取り練習もしっかり。"
                )

                FeatureCard(
                    title: "▶ 日本人向け旅行英会話",
                    body: "英語が苦手でも、海外旅行で困らない。\n旅行や日常会話ですぐに使える英語フレーズを、600フレーズ以上収録。"
                )

                FeatureCard(
                    title: "▶ 実用的なシーン別学習",
                    body: "▷ 空港・ホテル・レストラン・買い物・道案内・緊急時などに対応\n▷ 旅行先でそのまま使える英語フレーズを練習できます"
                )

                FeatureCard(
                    title: "▶ 日本人に使いやすい設計",
                    body: "▷ シンプルな日本語UI\n▷ すべてのフレーズに英語音声と日本語訳付き\n▷ ゆっくり再生で聞き取り練習もしやすい"
                )

                FeatureCard(
                    title: "▶ 練習と復習",
                    body: "▷ フラッシュカード、クイズ、復習機能に対応\n▷ 学習記録と毎日の目標管理\n▷ ホーム画面ウィジェットで毎日フレーズを確認"
                )

                FeatureCard(
                    title: "▶ 完全オフライン対応",
                    body: "▷ ネットがなくても学習できます\n▷ 旅行前の準備や移動中の学習に便利"
                )

                VStack(alignment: .leading, spacing: 14) {
                    Text("スクリーンショット")
                        .font(.title3.bold())

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ScreenshotImage(name: "anh1")
                            ScreenshotImage(name: "anh2")
                            ScreenshotImage(name: "anh3")
                        }
                    }
                }

                Text("© 2026 Travel English for Japanese")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(.top, 10)
            }
            .padding(24)
        }
        .background(Color(.systemGroupedBackground))
    }
}

struct FeatureCard: View {
    let title: String
    let body: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)

            Text(body)
                .font(.body)
                .foregroundStyle(.secondary)
                .lineSpacing(5)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(18)
        .background(Color(.secondarySystemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct ScreenshotImage: View {
    let name: String

    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(width: 220)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .shadow(radius: 6)
    }
}

#Preview {
    ContentView()
}
