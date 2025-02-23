<template>
  <UDropdownMenu
    v-slot="{ open }"
    :modal="false"
    :items="[{
      label: `Home`,
      to: '/',
      color: 'primary',
      checked: true,
      type: 'checkbox'
    }, {
      label: `Docs`,
      to: '/docs'
    }, {
      label: `Pricing`,
      to: '/pricing'
    }, {
      label: `Blog`,
      to: '/blog'
    }]"
    :ui="{ content: 'w-(--reka-dropdown-menu-trigger-width) min-w-0' }"
    size="xs"
  >
    <UButton
      label="Cheers!"
      variant="subtle"
      trailing-icon="i-lucide-chevron-down"
      size="xs"
      class="-mb-[6px] font-semibold rounded-full truncate"
      :class="[open && 'bg-[var(--ui-primary)]/15']"
      :ui="{
        trailingIcon: ['transition-transform duration-200', open ? 'rotate-180' : undefined].filter(Boolean).join(' ')
      }"
    />
  </UDropdownMenu>
</template>
