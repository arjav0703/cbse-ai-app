// See the Electron documentation for details on how to use preload scripts:
// https://www.electronjs.org/docs/latest/tutorial/process-model#preload-scripts
document.addEventListener("DOMContentLoaded", () => {
  const button = document.querySelector("#google-signin-btn");
  if (button) {
    button.addEventListener("click", (e) => {
      e.preventDefault();
      require("electron").shell.openExternal("/api/auth/auth/google");
    });
  }
});
