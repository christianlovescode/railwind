import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  activeIndex = 0;

  connect() {
    this.activeIndex = 0;
    this.showTab();

    console.log("tabs controller connected", this.element.dataset.id);
  }

  switchTab(event) {
    this.activeIndex = parseInt(event.currentTarget.dataset.tabIndex);
    this.showTab();
  }

  showTab() {
    // Get all elements with the class "tab-content".
    // Should only be the one within the tab_component.html.erb partial
    const tabs = this.element.querySelectorAll(".tab-content");

    // Iterate over each tab
    tabs.forEach((tab) => {
      // Get all direct children of the current tab
      const directChildren = Array.from(tab.children);

      // Iterate over each direct child to hide or show
      directChildren.forEach((child, i) => {
        if (i === this.activeIndex) {
          child.classList.remove("hidden");
        } else {
          child.classList.add("hidden");
        }
      });
    });
  }
}
