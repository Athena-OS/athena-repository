// Constants
const backgroundColor = '#1E1F29';
const foregroundColor = '#AAAAAA';

// Colors
const RED = '#FF512F';
const GREEN = '#B2FFA9';
const YELLOW = '#FFFD82';
const BLUE = '#3185FC';
const MAGENTA = '#DD2476';
const CYAN = '#66D7D1';
const LIGHT_GRAY = '#F2EFEA';
const DARK_GRAY = '#555753';

const ACTIVE_TAB = '#ED3A53';

// Mapped Colors
const colors = {
  black: backgroundColor,
  red: RED,
  green: GREEN,
  yellow: YELLOW,
  blue: BLUE,
  magenta: MAGENTA,
  cyan: CYAN,
  white: LIGHT_GRAY,
  lightBlack: DARK_GRAY,
  lightRed: RED,
  lightGreen: GREEN,
  lightYellow: YELLOW,
  lightBlue: BLUE,
  lightMagenta: MAGENTA,
  lightCyan: CYAN,
  colorCubes: '#fff',
  grayscale: foregroundColor
};

// Additional Constants
const cursorColor = YELLOW;
const borderColor = backgroundColor;

exports.decorateConfig = (config) => {
  return Object.assign({}, config, {
    foregroundColor,
    backgroundColor,
    borderColor,
    cursorColor,
    colors,
    css: `
      ${config.css || ''}
      .cursor-node {
        background-color: ${MAGENTA} !important;
        border-color: ${MAGENTA} !important;
      }
      .hyper_main {
        border: none !important;
      }
      .header_header {
        background: ${backgroundColor} !important;
      }
      .splitpane_divider {
        background-color: rgba(130, 128, 184, 0.5) !important;
      }
      .tab_tab {
        border: 0;
      }
      .tab_textActive {
        border-bottom: 2px solid ${ACTIVE_TAB};
      }
    `
  })
}