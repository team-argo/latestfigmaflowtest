The lack of detailed description requires inferring standard web practices for an "About Us" page. The generated Gherkin script will focus on accessibility, core content, linking, and basic structure.

## Feature: About Us Page Implementation

**As a website visitor,**
**I want to access detailed information about the company,**
**So that I can understand the history, mission, and values.**

---

### Scenario: Successful Navigation and Page Title Verification

**Given** I am on the company's homepage
**When** I click the "About Us" link in the main navigation or footer
**Then** I should be directed to the URL path "/about-us"
**And** the HTTP response status code should be 200
**And** the page title should contain "About Us" and the company name

### Scenario: Core Content Presence and Structure

**Given** I am viewing the "About Us" page
**Then** I should see a primary heading (H1) visible at the top of the page
**And** the heading text should be descriptive (e.g., "Our Story", "About Us")
**And** I should see a section dedicated to the Company Mission/Vision
**And** I should see a section describing the Company History or founding timeline
**And** the content should be clearly formatted into paragraphs and headings

### Scenario Outline: Key Brand Elements Verification

This ensures essential branding elements, which build trust, are present.

**Given** I am viewing the "About Us" page
**Then** I should see the following visible brand elements:

| Element Type | Locator/Content |
| :--- | :--- |
| Image | Company logo/branding image |
| Text | The current year in a copyright or footer element |
| Content Block | Call-to-Action for 'Contact Us' or 'Careers' |

### Scenario: Verifying Internal Link Integrity

**Given** I am viewing the "About Us" page
**Then** I should see a functional hyperlink to the "Contact Us" page
**And** I should see a functional hyperlink to the "Careers" or "Join Our Team" page
**And** all internal links on the page should return an HTTP response status code of 200 when clicked

### Scenario: Page Responsiveness on Mobile Devices

**Given** I am simulating a user on a mobile device (e.g., screen size 375px)
**When** I navigate to the "About Us" page
**Then** the main content layout should stack vertically and be easily readable
**And** there should be no horizontal scroll bar visible on the screen
**And** all images and media should scale correctly within the viewport
**And** the navigation menu should collapse into a hamburger or equivalent mobile menu icon