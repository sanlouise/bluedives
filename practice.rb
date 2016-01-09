<nav class="navbar navbar-default navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      
      <!--Responsive navbar-->
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    
      <!--Logo-->
      <%= link_to root_path, class: 'navbar-brand', id: "logo" do %>
       Blue Dives!
      <% end %>
    </div>
    
    <!--Logo contents right-side-->
    <div class="collapse navbar-collapse" id="navbar">
      <div class="nav navbar-nav navbar-right">
        
     
        <% if logged_in? %>
          
          <!--Logged In Dropdown Menu-->
          <li class="dropdown">
            <%= link_to '#', class: "dropdown-toggle btn btn-success", id: "user-profile", data:{toggle: 'dropdown'}, role: "button", "aria-expanded" => "false" do %>
              <%= current_user.name %> <b class="caret"></b>
            <% end %>
              <ul class="dropdown-menu" role="menu">
                <li>
                  <%= link_to "My Account", edit_user_registration_path %></li>
                    <span class="glyphicon glyphicon-user"></span>&nbsp;Profile
                  <% end %>
                </li>

                <li class="divider"></li>
                <li>
                  <%= button_to "Sign Out", destroy_user_session_path, method: :delete %>
                    <span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout
                  <% end %>
                </li>
              </ul>
          </li>
        
        <% else %>
          
          <!--Login Button-->
          <li>
            <%= link_to "Log In", new_user_session_path, method: :get %>
              <span class="glyphicon glyphicon-log-in"></span>&nbsp;Login
            <% end %>
          </li>
          
        <% end %>
        
        <!--About Button-->
        <li>
          <%= link_to "About", about_path %>
            <span class="glyphicon"></span>&nbsp;About
          <% end %>
        </li>
        
        <!--Contact Button-->
        <li>
          <%= link_to contact_path do %>
            <span class="glyphicon"></span>&nbsp;Contact
          <% end %>
        </li>
    
      </div>
    </div>    
  </div>
</nav>