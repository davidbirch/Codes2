module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
      "#{@title}"
  end
  
  def keywords
      "#{@keywords}"
  end
  
  def google_analytics
    google_code ="
    <script>
    var _gaq=[['_setAccount','UA-31261684-1'],['_trackPageview']];
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
    g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>"
    
    
    google_code
  end
  
  
end
