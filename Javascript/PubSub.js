const PubSub = (function () {
  const topics = {};

  function subscribe(topic, callback) {
    if (!topics[topic]) topics[topic] = [];
    topics[topic].push(callback);
    return () => {
      topics[topic] = topics[topic].filter(cb => cb !== callback);
    };
  }

  function publish(topic, data) {
    if (!topics[topic]) return;
    topics[topic].forEach(callback => callback(data));
  }

  return { subscribe, publish };
})();

const unsubscribe = PubSub.subscribe("news", (data) => {
  console.log(`Received news: ${data}`);
});
PubSub.publish("news", "JavaScript is fun!");
unsubscribe();
PubSub.publish("news", "This won't be logged");