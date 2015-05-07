jQuery ->
  updateDiameter = (circle)-> 
    bodyWidth = $('body').width();
    console.log(bodyWidth)
    if bodyWidth < 400
      newDiameter = bodyWidth-20
    else
      newDiameter = 400
    console.log(newDiameter)
    $(circle).width(newDiameter)
    $(circle).height(newDiameter)
    $(circle).css({
      "width": newDiameter+'px',
      "height": newDiameter+'px',
      "padding": newDiameter/4+'px '+newDiameter/20+'px'
    })

  updateCircles = () ->
    circles = $('.circle')
    for circle in circles
      updateDiameter(circle)

  updateCircles()
  window.onresize = updateCircles

  