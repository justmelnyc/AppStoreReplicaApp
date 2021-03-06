// 2020.07.19 | AppStore - SearchTabView.swift |
import SwiftUI
//import Combine


struct SearchTabView: View {
  @State var isAccountViewPresented = false
  @State var text: String = ""
  
  var body: some View {
    NavigationView {
      ScrollView {
        CustomSearchBar(text: $text)
        DiscoverBlock()
        Spacer()
        SuggestedAppsBlock()
      }
      .navigationBarTitle("Search")
      .navigationBarItems(leading: SearchBar(text: $text), trailing: AccountButton(isAccountViewPresented: $isAccountViewPresented))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct SearchTabView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabView()
    }
}
