# flutter_heiyanquan

```
├── lib
│   ├── common // 通用功能
│   │   ├── api // 拉取数据
│   │   │   └── index.dart
│   │   ├── components // 业务组件
│   │   │   └── index.dart
│   │   ├── extension // 扩展
│   │   │   └── index.dart
│   │   ├── i18n // 多语言
│   │   │   └── index.dart
│   │   ├── index.dart
│   │   ├── models // 数据模型
│   │   │   └── index.dart
│   │   ├── routers // 路由
│   │   │   └── index.dart
│   │   ├── services // 全局服务
│   │   │   └── index.dart
│   │   ├── style // 样式
│   │   │   └── index.dart
│   │   ├── utils // 工具函数
│   │   │   └── index.dart
│   │   ├── values // 配置值
│   │   │   └── index.dart
│   │   └── widgets // 基础组件
│   │       └── index.dart
│   ├── main.dart
│   └── pages // 业务
│       └── styles // 样式调试

```

## 类名约定

| 用途             | 前缀   | 后缀       | 举例             |
| ---------------- | ------ | ---------- | ---------------- |
| 数据模型         |        | Model      | AttributeModel   |
| API请求          |        | Req        | OrdersReq        |
| Service服务      |        | Service    | CartService      |
| UI组件           |        | Widget     | PinPutWidget     |
| 样式             | App    |            | AppColors        |
| 资源             | Assets |            | AssetsImages     |
| extension 扩展   | Ex     |            | ExColor          |
| page 控制器      |        | Controller | BuyNowController |
| page 视图        |        | Page       | BuyNowPage       |
| page widget 组件 | Build  |            | BuildPriceLine   |

## 变量、函数名约定

| 用途               | 前缀   | 后缀 | 举例          |
| ------------------ | ------ | ---- | ------------- |
| 私有               | _      |      | _findIndex    |
| 视图拆分函数       | _build |      | _buildButtons |
| 主视图函数（保留） |        |      | _buildView    |
