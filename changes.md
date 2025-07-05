### **User Side**

1. **Content Upload & Display**
  
  * Upload all course content. Display it through a connected GitHub repository.
2. **Website Customization**
  
  * Change the logo, all images, and text across every page of the website.
3. **Access Control (Login Required)**
  
  * Lock content behind login.
    
  * Only allow access to course overview and content **before the first project**.
    
  * If user is **not logged in**, redirect to the login/signup page.
    
4. **Progress Logic**
  
  * If a user marks content as "completed", they must also:
    
    * Complete the full module/section.
      
    * Upload an image as proof (e.g., project screenshot).
      
    * Wait for admin approval to unlock the next module.
      
5. **Navigation Behavior**
  
  * Routes /allpath should be visible.
    
  * If user clicks "Explore":
    
    * Check if logged in → Yes: show content. No: redirect to login/signup.
6. **Footer Cleanup**
  
  * Remove the “Guides” section.
    
  * Remove any social media links we don’t use.
    
* * *

### **Admin Panel**

1. **Image Approval Tab**
  
  * Add a new tab for reviewing uploaded images.
    
  * Approval will unlock the next module for the user.
    
2. **Approval Notifications**
  
  * Show pending approvals in a notification-style **dialog box** in the admin dashboard.