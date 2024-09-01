<%@ page import="javax.servlet.http.HttpSession" %>
    <% 
    HttpSession sessions = request.getSession(false); 
    String userEmail = "";
    String userName = "";
    if (sessions !=null && sessions.getAttribute("userEmail") !=null) {
        userEmail=(String) sessions.getAttribute("userEmail");
        userName=(String)sessions.getAttribute("userName"); 
    } 
    %>
        <!DOCTYPE html>
        <html lang="en">
        <%@ include file="../components/dashboardComponents/dashboardMetaData.jsp" %>

            <body>
                <nav class="navigation">
                    <div>
                        <h2 class="logo">Vidhya Rachna</h2>
                    </div>
                    <div class="nav">
                        <button class="img" id="toggleButton">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8y8Ma1stPowyN8IE_MrCYOOF2ujw7rtbLBQ&usqp=CAU"
                                alt="UserPhoto" class="user-pic">
                        </button>
                    </div>
                    <div class="sub-menu-wrap" id="wrap">
                        <div class="sub-menu">
                            <div class="user-info">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8y8Ma1stPowyN8IE_MrCYOOF2ujw7rtbLBQ&usqp=CAU"
                                    alt="User Image">
                                <h3 style="color:white"><%=userName %></h3>
                            </div>
                            <hr>

                            <a href="#" class="sub-menu-link">
                                <ion-icon name="person"></ion-icon>
                                <p>Edit Profile</p><span>></span>
                            </a>
                            <a href="#" class="sub-menu-link">
                                <ion-icon name="settings"></ion-icon>
                                <p>Settings & Privacy</p><span>></span>
                            </a>
                            <a href="#" class="sub-menu-link">
                                <ion-icon name="help-circle"></ion-icon>
                                <p>Help & Support</p><span>></span>
                            </a>
                            <a href="#" class="sub-menu-link">
                                <ion-icon name="log-out"></ion-icon>
                                <p>Logout</p><span>></span>
                            </a>
                        </div>
                    </div>
                </nav>
               <%@ include file="../components/dashboardComponents/SideBar.jsp"%>

                <script src="JavaScript/dashboard.js" defer></script>

                <!-- Script Tags -->
                <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
                <script type="module" src="JavaScript/script.js"></script>
            </body>

        </html>