FROM node:22

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libxcomposite1 \
    libxrandr2 \
    libasound2 \
    libpangocairo-1.0-0 \
    libgtk-3-0 \
    libxdamage1 \
    libgbm1 \
    libxshmfence1 \
    libx11-xcb1 \
    libxcb-dri3-0 \
    wget \
    && apt-get clean

ENV PLAYWRIGHT_BROWSERS_PATH=/root/.cache/ms-playwright

COPY package.json yarn.lock ./

RUN yarn install

# Playwright用のブラウザをインストール
RUN yarn playwright install

COPY . .

CMD ["yarn", "storybook"]
