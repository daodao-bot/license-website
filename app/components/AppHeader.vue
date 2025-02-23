<script setup lang="ts">
const route = useRoute()

const items = computed(() => [{
  label: '文档',
  to: '/docs',
  active: route.path.startsWith('/docs')
}, {
  label: '定价',
  to: '/pricing'
}, {
  label: '博客',
  to: '/blog'
}])
</script>

<template>
  <UHeader>
    <template #left>
      <NuxtLink to="/">
        <!-- <LogoPro class="w-auto h-6 shrink-0" /> -->
        <span>License-Server</span>
      </NuxtLink>
      <TemplateMenu />
    </template>

    <UNavigationMenu
      :items="items"
      variant="link"
    />

    <template #right>
      <UColorModeButton />
      <UButton
        label="登录"
        color="neutral"
        variant="ghost"
        to="/login"
      />
      <UButton
        label="注册"
        color="neutral"
        trailing-icon="i-lucide-arrow-right"
        class="hidden lg:flex"
        to="/signup"
      />
    </template>

    <template #body>
      <UNavigationMenu
        :items="items"
        orientation="vertical"
        class="-mx-2.5"
      />

      <USeparator class="my-6" />

      <UButton
        label="登录"
        color="neutral"
        variant="subtle"
        to="/login"
        block
        class="mb-3"
      />
      <UButton
        label="注册"
        color="neutral"
        to="/signup"
        block
      />
    </template>
  </UHeader>
</template>
