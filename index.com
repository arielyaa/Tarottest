<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>塔羅抽牌網站</title>
</head>
<body>
  <h1>歡迎來抽一張塔羅牌！</h1>
  <button onclick="drawCard()">抽牌</button>
  <p id="result"></p>

  <script>
    const cards = ["愚者", "魔術師", "女祭司", "女皇", "皇帝"];
    const meanings = {
      "愚者": "新的開始、冒險與可能性",
      "魔術師": "掌握資源、創造與行動",
      "女祭司": "直覺、潛意識與神秘",
      "女皇": "豐盛、愛與關懷",
      "皇帝": "權威、結構與責任"
    };

    function drawCard() {
      const card = cards[Math.floor(Math.random() * cards.length)];
      document.getElementById("result").innerText = `你抽到的是：${card} - ${meanings[card]}`;
    }
  </script>
</body>
</html>
