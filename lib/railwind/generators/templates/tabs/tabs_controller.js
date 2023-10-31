import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  activeIndex = 0;

  connect() {
    this.activeIndex = 0;
    this.showTab();
    const tabs = this.element.querySelectorAll(".tab-content");
    tabs[0].classList.remove("hidden");
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
    tabs.forEach((tab, index) => {
      // Get all direct children of the current tab
      const directChildren = Array.from(tab.children);

      // Iterate over each direct child to hide or show
      directChildren.forEach((child, i) => {
        let element = this.element.querySelector(
          `button[data-tab-index="${i}"]`
        );

        if (i === this.activeIndex) {
          child.classList.remove("hidden");
          element.classList.add("border-gray-900");
          element.classList.add("text-gray-900");
          element.classList.remove("text-gray-400");
        } else {
          child.classList.add("hidden");
          element.classList.remove("border-gray-900");
          element.classList.remove("text-gray-900")
          element.classList.add("text-gray-400");
        }
      });
    });
  }
}
