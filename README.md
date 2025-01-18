# ddns
一个非常简单的小工具，用于手动更新阿里云DNS 记录，懒得搭环境，并且懒得打开阿里云界面手动添加的时候，可以用在这个一键解析，使用bat+html编写无需任何环境。
---

## **实现方式**
1. **BAT 脚本**：
   - 获取本地 IP 地址。
   - 生成 `redirect.html` 文件，将 IP 地址作为参数传递给主页面。
   - 打开主页面。

2. **HTML + JS**：
   - 从 URL 参数中获取 IP 地址。
   - 提供用户界面，支持选择 IP 来源（公网 IP、本地 IP 或手动输入 IP）。
   - 调用阿里云 DNS API 查询和更新 DNS 记录。

---

## **使用方法**
1. **配置 `config.js`**：
   - 修改 `config.js` 文件，填写阿里云的 API 密钥和域名信息：
     ```javascript
     const config = {
       accessKeyId: "你的阿里云 AccessKey ID",
       accessKeySecret: "你的阿里云 AccessKey Secret",
       domain: "你的主域名",
       subdomain: "你的子域名（可选）"
     };
     ```

2. **运行工具**：
   - 双击运行 `start.bat` 文件。
   - 在打开的网页中选择 IP 来源并提交表单。
   - 查看操作结果。

---

## **文件结构**
ddns-tool/
   - README.md
   - ddns_tool.html
   - styles.css
   - config.js
   - start.bat
   - redirect.html(自动生成)
   
---

## **注意事项**
- 请妥善保管 `config.js` 文件，避免泄露阿里云 API 密钥。
- 工具仅适用于 Windows 系统。
