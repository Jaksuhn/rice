{ colorscheme }:
with colorscheme;
''
  /* variables {{{ */
  :root {
    /* Minimal Functional Fox variables*/
    --mff-bg: ${primary.background};
    --foreground: ${primary.foreground};
    --foreground-lighter: ${bright.white};
    --mff-icon-color: ${normal.yellow};
    --mff-nav-toolbar-padding: 0px;
    --mff-sidebar-bg: var(--mff-bg);
    --mff-sidebar-color: ${primary.foreground};
    --mff-tab-border-radius: 0px;
    --mff-tab-color: ${normal.yellow};
    /*--mff-tab-font-family: "terminus (ttf)";*/
    --mff-tab-font-family: "cozette";
    --mff-tab-font-size: 10pt;
    --mff-tab-font-weight: 400;
    --mff-tab-height: 20px;
    --mff-tab-pinned-bg: ${normal.white};
    --mff-tab-selected-bg: ${normal.green};
    --mff-tab-soundplaying-bg: ${normal.magenta};
    --mff-urlbar-color: ${primary.foreground};
    --mff-urlbar-focused-color: ${primary.foreground};
    --mff-urlbar-font-family: "terminus (ttf)";
    --mff-urlbar-font-size: 12pt;
    --mff-urlbar-font-weight: normal;
    --mff-urlbar-results-color: ${normal.blue};
    --mff-urlbar-results-font-family: "terminus (ttf)";
    --mff-urlbar-results-font-size: 12pt;
    --mff-urlbar-results-font-weight: normal; /*700;*/
    --mff-urlbar-results-url-color: ${normal.green};
    /*   --mff-tab-selected-bg: linear-gradient(90deg, rgba(232,74,95,1) 0%, rgba(255,132,124,1) 50%, rgba(254,206,168,1) 100%); */
    /*   --mff-urlbar-font-weight: 600; */

    /* Overriden Firefox variables*/
    --autocomplete-popup-background: var(--mff-bg) !important;
    --default-arrowpanel-background: var(--mff-bg) !important;
    --default-arrowpanel-color: ${normal.yellow} !important;
    --lwt-toolbarbutton-icon-fill: var(--mff-icon-color) !important;
    --panel-disabled-color: ${normal.yellow}80;
    --toolbar-bgcolor: var(--mff-bg) !important;
    --urlbar-separator-color: transparent !important;

    --autocomplete-popup-highlight-color: ${cursor.foreground} !important;
    --autocomplete-popup-highlight-background: ${cursor.background} !important;

    --arrowpanel-background: var(--mff-bg) !important;
    --arrowpanel-color: var(--foreground) !important;
    --panel-disabled-color: rgba(var(--foreground-lighter), 0.4) !important;
  }

  /* }}} */

  /* Tabs {{{ */

  .tab-background[selected="true"] {
    background: var(--mff-tab-selected-bg) !important;
  }

  .tabbrowser-tab[visuallyselected="true"] .tab-text {
    color: var(--mff-bg) !important;
  }

  .tab-background:not[visuallyselected] {
    background: var(--mff-tab-selected-bg) !important;
    /*opacity: 0.5 !important;*/
    opacity: 1 !important;
  }

  /* This positions the tabs under the navaigator container */
  #titlebar {
    -moz-box-ordinal-group: 3 !important;
  }

  .tabbrowser-tab::after,
  .tabbrowser-tab::before {
    border-left: none !important;
  }

  .tab-background {
    border: none !important;
  }

  .tabbrowser-arrowscrollbox {
    margin-inline-start: 4px !important;
    margin-inline-end: 0px !important;
  }

  #tabbrowser-tabs,
  #tabbrowser-arrowscrollbox {
    min-height: 0 !important;
  }

  .tab-close-button {
    display: none !important;
  }

  .tab-text {
    font-family: var(--mff-tab-font-family);
    font-weight: var(--mff-tab-font-weight);
    font-size: var(--mff-tab-font-size) !important;
    color: var(--mff-tab-color);
  }

  /* Hide the favicon for tabs */
  hbox.tab-content .tab-icon-image {
    display: none !important;
  }

  /* Show the favicon for tabs that are pinned */
  hbox.tab-content[pinned="true"] .tab-icon-image {
    display: initial !important;
  }

  hbox.tab-content[pinned="true"] .tab-text {
    display: none !important;
  }

  #tabbrowser-tabs {
    --tab-loading-fill: ${normal.black} !important;
  }

  .tab-label-container:not([textoverflow]) {
    display: flex;
    overflow: hidden;
    justify-content: center;
    width: 50% !important;
    max-width: 50% !important;
    min-width: 50% !important;
  }

  /* .tab-label-container::after {
    content: "?" !important;
  } */

  .tab-line {
    display: none !important;
    margin-bottom: 0 !important;
  }

  .tabbrowser-tab {
    border-radius: var(--mff-tab-border-radius) !important;
    border-width: 0;
    height: var(--mff-tab-height) !important;
    margin-bottom: 0px !important;
    margin-inline-end: 4px !important;
    margin-top: 0px !important;
    max-height: var(--mff-tab-height) !important;
    min-height: var(--mff-tab-height) !important;
  }

  .tabbrowser-tab[soundplaying="true"] {
    background-color: var(--mff-tab-soundplaying-bg) !important;
  }

  #tabs-newtab-button {
    opacity: 0.7;
  }

  .tab-icon-sound {
    display: none !important;
  }

  /* }}} */

  /* Toolbar {{{ */

  ::selection {
    background-color: ${cursor.background} !important;
    color: ${cursor.foreground} !important;
  }

  .urlbar-icon > image {
    fill: var(--mff-icon-color) !important;
    color: var(--mff-icon-color) !important;
  }

  .toolbarbutton-text {
    color: var(--mff-icon-color) !important;
  }
  .urlbar-icon {
    color: var(--mff-icon-color) !important;
  }

  .toolbarbutton-1 {
    filter: brightness(80%) sepia(50%);
  }
  #back-button,
  #forward-button {
    filter: brightness(80%) sepia(100%);
  }

  #tabs-newtab-button image {
    fill: var(--mff-tab-color);
    color: var(--mff-tab-color);
  }

  #urlbar-results {
    font-family: var(--mff-urlbar-results-font-family);
    font-weight: var(--mff-urlbar-results-font-weight);
    font-size: var(--mff-urlbar-results-font-size) !important;
    color: var(--mff-urlbar-results-color) !important;
  }

  #urlbar-container {
    min-height: 0px;
  }

  .urlbarView-row[type="bookmark"] > span {
    color: ${bright.green} !important;
  }

  .urlbarView-row[type="switchtab"] > span {
    color: ${bright.yellow} !important;
  }

  .urlbarView-url,
  .search-panel-one-offs-container {
    color: var(--mff-urlbar-results-url-color) !important;
    font-family: var(--mff-urlbar-font-family);
    font-weight: var(--mff-urlbar-results-font-weight);
    font-size: var(--mff-urlbar-font-size) !important;
  }

  .urlbarView-favicon,
  .urlbarView-type-icon {
    display: none !important;
  }

  #urlbar-input {
    font-size: var(--mff-urlbar-font-size) !important;
    color: var(--mff-urlbar-color) !important;
    font-family: var(--mff-urlbar-font-family) !important;
    font-weight: var(--mff-urlbar-font-weight) !important;
    text-align: center !important;
  }

  #tracking-protection-icon-container,
  #identity-box {
    display: none;
  }

  #back-button > .toolbarbutton-icon {
    --backbutton-background: transparent !important;
    border: none !important;
  }

  toolbar {
    background-image: none !important;
  }

  #urlbar-background {
    opacity: 0.98 !important;
  }

  #navigator-toolbox,
  toolbaritem {
    border: none !important;
  }

  #urlbar-background {
    background-color: var(--mff-bg) !important;
    border: none !important;
  }

  .toolbar-items {
    background-color: var(--mff-bg) !important;
  }

  #sidebar-search-container {
    background-color: var(--mff-sidebar-bg) !important;
  }

  box.panel-arrowbox {
    display: none;
  }

  box.panel-arrowcontent {
    border-radius: 0px !important;
    border: none !important;
  }

  tab.tabbrowser-tab {
    overflow: hidden;
  }

  tab.tabbrowser-tab:hover {
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.05);
  }

  image#star-button {
    display: none;
  }

  toolbar#nav-bar {
    padding: var(--mff-nav-toolbar-padding) !important;
  }

  toolbar#nav-bar {
    padding: 4px !important;
  }

  #urlbar {
    max-width: 90% !important;
    margin: 0 5% !important;
    margin-top: -5px !important;
      /* position: unset!important; */
  }

  #urlbar-input:focus {
    color: var(--mff-urlbar-focused-color) !important;
  }

  .megabar[breakout-extend="true"]:not([open="true"]) > #urlbar-background {
    box-shadow: none !important;
    background-color: transparent !important;
  }

  toolbarbutton {
    box-shadow: none !important;
  }
  /* }}} */

  /* Sidebar {{{ */

  .close-icon,
  .urlbar-icon {
    fill: var(--mff-icon-color) !important;
  }

  .sidebar-placesTree {
    color: var(--mff-sidebar-color) !important;
  }

  #sidebar-switcher-target {
    /*   color: white !important; */
  }

  #sidebar-box {
    --sidebar-background-color: var(--mff-sidebar-bg) !important;
  }

  splitter#sidebar-splitter {
    opacity: 0 !important;
    color: var(--mff-bg) !important;
  }

  splitter#sidebar-splitter {
    border: none !important;
    background-color: transparent !important;
  }

  image#sidebar-icon {
    display: none;
  }
  /* }}} */

  /* arrow panel {{{*/

  .panel-arrowcontent {
    padding: 0px !important;
    margin: 0px !important;
  }

  toolbarseparator {
    display: none;
  }

  /* something */
  .toolbarbutton-icon,
  .toolbarbutton-icon::after {
    fill: ${normal.yellow} !important;
  }

  .urlbarView-row[selected="true"] {
    color: red;
  }

  /* }}} */

  /* Source file https://github.com/MrOtherGuy/firefox-csshacks/tree/master/chrome/hide_tabs_with_one_tab.css made available under Mozilla Public License v. 2.0
  See the above repository for updates as well as full license text. */

  /* Makes tabs toolbar items zero-height initially and sets enlarge them to fill up space equal to tab-min-height set on tabs */
  /* Firefox 65+ only */

  :root[sizemode="normal"] #nav-bar {
    --uc-window-drag-space-width: 20px;
  }

  #titlebar {
    -moz-appearance: none !important;
  }

  #tabbrowser-tabs,
  #tabbrowser-tabs > .tabbrowser-arrowscrollbox,
  #tabbrowser-arrowscrollbox {
    min-height: 0 !important;
  }

  :root:not([customizing]) #tabbrowser-tabs .tabs-newtab-button,
  :root:not([customizing]) #tabs-newtab-button,
  :root:not([customizing]) #TabsToolbar-customization-target > .toolbarbutton-1,
  :root:not([customizing]) #TabsToolbar .titlebar-button {
    -moz-appearance: none !important;
    height: 0px;
    padding-top: 0px !important;
    padding-bottom: 0px !important;
    -moz-box-align: stretch;
    margin: 0 !important;
  }

  #tabbrowser-tabs .tabbrowser-tab {
    height: var(--tab-min-height);
  }

  #tabbrowser-tabs .tabbrowser-tab[first-visible-tab="true"][last-visible-tab="true"] {
    visibility: collapse !important;
  }

  /* Button re-styling */
  #tabs-newtab-button:hover,
  #tabbrowser-tabs .tabs-newtab-button:hover {
    background-color: var(--toolbarbutton-hover-background);
  }

  #tabs-newtab-button > .toolbarbutton-icon,
  #tabbrowser-tabs .tabs-newtab-button > .toolbarbutton-icon {
    padding: 0 !important;
    transform: scale(0.6);
    background-color: transparent !important;
  }
  /* Extra top padding  in maximized window */
  @media (-moz-os-version: windows-win10) {
    :root[sizemode="maximized"] #navigator-toolbox {
      padding-top: 7px !important;
    }
  }
  /* Fix window controls not being clickable */
  :root[tabsintitlebar] #toolbar-menubar[autohide="true"][inactive] {
    transition: height 0ms steps(1) 80ms;
  }
  #nav-bar {
    border-inline: var(--uc-window-drag-space-width) solid var(--toolbar-bgcolor);
  }
''
