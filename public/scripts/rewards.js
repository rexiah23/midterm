$(() => {
  $('#rewardsForm').on('submit', (event) => {
    event.preventDefault();
    applyRewards();
  })
});

function applyRewards() {

 return $.ajax({
    url: '/api/rewards',
    method: 'GET'
  })
  .then(rewards => {
    const $orderText = $('#order_text');
    const $orderTotal = $('#order_total');
    const $totalBeforeRewards = parseInt($orderTotal.text());
    if (rewards.count >= 1) {
      const newTotal = $totalBeforeRewards * 0.8;
      $orderText.text('Rewards Successfully Applied! Your New Total is: ');
      return $orderTotal.text(newTotal);
    }
    $orderText.text('Insufficient Rewards. Total is still: ');
    return $orderTotal.text($totalBeforeRewards);
  })
}




