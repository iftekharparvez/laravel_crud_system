import { defineConfig } from 'vite';

export default defineConfig({
  // other configurations...
  optimizeDeps: {
    include: ['dependency-package'],
  },
  // other configurations...
});
