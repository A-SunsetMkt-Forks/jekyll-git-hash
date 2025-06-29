# frozen_string_literal: true

# SPDX-FileCopyrightText: Copyright (c) 2014-2025 Yegor Bugayenko
# SPDX-License-Identifier: MIT

# Jekyll plugin for generating Git hash
#
# Place this file in the `_plugins` directory and
# use `{{ site.data['hash'] }}` in your Liquid templates
#
# Author: Yegor Bugayenko <yegor@tpc2.com>
# Source: https://github.com/yegor256/jekyll-git-hash
class Jekyll::GitHashGenerator < Generator
  priority :high
  safe true
  def generate(site)
    hash = `git rev-parse --short HEAD`.strip
    site.data['hash'] = hash
  end
end
