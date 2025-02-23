<script setup lang="ts">
const columns = [{
  label: '资源',
  children: [{
    label: '在线文档'
  }, {
    label: '更新日志'
  }]
}, {
  label: '主题',
  children: [{
    label: '寻求合作'
  }, {
    label: '项目赞助'
  }]
}, {
  label: '团队',
  children: [{
    label: '关于我们'
  }, {
    label: '技术博客'
  }]
}]

const toast = useToast()

const email = ref('')
const loading = ref(false)

function onSubmit() {
  loading.value = true

  toast.add({
    title: '订阅成功！',
    description: '感谢您订阅了我们的新闻！'
  })
}
</script>

<template>
  <USeparator
    icon="i-simple-icons-nuxtdotjs"
    class="h-px"
  />
  <UFooter :ui="{ top: 'border-b border-[var(--ui-border)]' }">
    <template #top>
      <UContainer>
        <UFooterColumns :columns="columns">
          <template #right>
            <form @submit.prevent="onSubmit">
              <UFormField
                name="email"
                label="订阅我们的新闻"
                size="lg"
              >
                <UInput
                  v-model="email"
                  type="email"
                  class="w-full"
                  placeholder="请输入您的邮箱..."
                >
                  <template #trailing>
                    <UButton
                      type="submit"
                      size="xs"
                      color="neutral"
                      label="订阅"
                    />
                  </template>
                </UInput>
              </UFormField>
            </form>
          </template>
        </UFooterColumns>
      </UContainer>
    </template>

    <template #left>
      <p class="text-(--ui-text-muted) text-sm">
        Copyright © {{ new Date().getFullYear() }}. All rights reserved.
      </p>
    </template>

    <template #right>
      <UColorModeButton />

      <UButton
        to="https://gitee.com/daodao-bot/license-website"
        target="_blank"
        icon="i-simple-icons-github"
        aria-label="GitHub"
        color="neutral"
        variant="ghost"
      />
    </template>
  </UFooter>
</template>
