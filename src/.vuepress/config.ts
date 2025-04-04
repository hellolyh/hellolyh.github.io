import { defineUserConfig } from "vuepress";

import theme from "./theme.js";

export default defineUserConfig({
  base: "/",

  lang: "zh-CN",
  title: "LiuYuhe's Blog",
  description: "This is LiuYuhe' blog",

  theme,

  // 和 PWA 一起启用
  // shouldPrefetch: false,
});
