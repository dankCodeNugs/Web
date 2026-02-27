#import "@local/ib:0.1.0": *
#title[Mixing Client-side Web Frameworks]
Mixing client-side web frameworks, or meta client-side web frameworks.

- #a([DOM container], <dom-container>)
  - Minimum overhead but need framework support.

- Web Components
  #footnote[#a[Vue项目组件和React项目组件相互使用\_react和vue混用 - CSDN博客][https://blog.csdn.net/yiguoxiaohai/article/details/142860239]]

  #a[Web 元件不是未來][https://codelove.tw/@tony/post/9aW8lq]

- Astro: #a[Mixing frameworks][https://docs.astro.build/en/guides/framework-components/#mixing-frameworks]

  #a[Building a multi-framework dashboard with Astro - LogRocket Blog][https://blog.logrocket.com/building-multi-framework-dashboard-with-astro/]

  #a[Astro: All-in-one web framework designed for speed | Hacker News][https://news.ycombinator.com/item?id=37108111]

  #a[Astro Mixing Frameworks Proof-of-concept - Issue \#128 - AgnosticUI/agnosticui][https://github.com/AgnosticUI/agnosticui/issues/128]

- `<iframe>`
  - Isolation
  - Has some limitations. Although most are workaroundable at the cost of complexity.
  - Needs separate backend handling for multiple SPAs.

  #a[How Microfrontends Work: From iframes to Module Federation][https://www.freecodecamp.org/news/how-microfrontends-work-iframes-to-module-federation/]

- Multiple browser pages

#a[Understanding the JavaScript Meta-Framework Ecosystem][https://prismic.io/blog/javascript-meta-frameworks-ecosystem]
- #a[State of JavaScript 2025: Meta-Frameworks][https://2025.stateofjs.com/en-US/libraries/meta-frameworks/]

#a[Is it possible to use multiple frameworks in one web application? : r/webdev][https://www.reddit.com/r/webdev/comments/78387n/is_it_possible_to_use_multiple_frameworks_in_one/]

#a[The Joy of Mixing Custom Elements, Web Components, and Markdown | Hacker News][https://news.ycombinator.com/item?id=44865997]

= DOM container <dom-container>
DOM container/root.

- Build from source
- Copy assets
  - Simple to migrate for large components.
  - Cannot share dependencies.

Vue + React:
#footnote[#a[Vue + React 联合开发指南：跨越框架边界的前端实践-腾讯云开发者社区-腾讯云][https://cloud.tencent.com/developer/article/2550686]]
- #a[`createRoot()`: Rendering a page partially built with React -- React][https://react.dev/reference/react-dom/client/createRoot#rendering-a-page-partially-built-with-react]

- #a[veaury: Use React in Vue3 and Vue3 in React, And as perfect as possible!][https://github.com/gloriasoft/veaury]
  #footnote[#a[vue react混合使用的几种方案：\_react和vue混用 - CSDN博客][https://blog.csdn.net/qq_42152032/article/details/140871172]]

- #a[vuera: :eyes: Vue in React, React in Vue. Seamless integration of the two. :dancers:][https://github.com/akxcv/vuera]
  #footnote[#a[Vue、React 也可以互相引用？｜ 8月更文挑战这是我参与8月更文挑战的第6天，活动详情查看：8月更文挑战 前言 V - 掘金][https://juejin.cn/post/6994568856807145479]]
  (discontinued)

- Build from source
  #footnote[#a[reactjs - Is it possible to integrate multiple front end apps, one in vue and another in react, with a single laravel backend? - Stack Overflow][https://stackoverflow.com/questions/55794811/is-it-possible-to-integrate-multiple-front-end-apps-one-in-vue-and-another-in-r]]

- Copy assets
  - #a[```js import.meta.glob()```][https://vite.dev/guide/features#glob-import]

- Routing
  #footnote[#a[html - Vue 3 keep-alive cache routes - Stack Overflow][https://stackoverflow.com/questions/66215625/vue-3-keep-alive-cache-routes]]
  ```vue
  <router-view v-slot="{ Component }">
    <keep-alive include="Designer">
      <component :is="Component" :key="$route.fullPath"></component>
    </keep-alive>
  </router-view>
  ```
