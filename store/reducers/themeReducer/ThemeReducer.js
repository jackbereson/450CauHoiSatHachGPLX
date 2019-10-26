import { base, darkTheme, lightTheme, colorOptions } from "./Theme";

// // light-blue
// const initialState = {theme: { ...base, ...lightTheme, ...colorOptions.blue }};
// // light-orange
// const initialState = {theme: { ...base, ...lightTheme, ...colorOptions.orange }};
// // dark-blue
// const initialState = {theme: { ...base, ...darkTheme, ...colorOptions.blue }};
//dark-orange
const initialState = { theme: { ...base, ...darkTheme, ...colorOptions.oranger } };

const ThemeReducer = (state = initialState, action) => {
  switch (action.type) {
    case "ACTION_TYPE":
      return state;
    default:
      return state;
  }
};

export {
  ThemeReducer
};