request-ce-bundle-keg-catalog
=============================
## Overview
This bundle is used internally by Kinetic Request CE and built specifically for our KEG conference.

It includes the default Kinetic bundle pages but also includes conference specific items:
* Scavenger Hunt (?page=scavenger-hunt.jsp)
* Poster Stories (?page=poster.jsp)
* Schedule/Agenda (?page=agenda.jsp)
* many other static pages...

## Scavenger Hunt
Our scavenger hunt was for the first two days of our annual conference. Attendees collect points by completing scavenger hunt from the our pre-selected list built as forms. The forms include specific tasks or questions, such as take a photo, to gain points and prizes.

## Customization
When you customize this bundle it is a good idea to fork it on your own git server to track your customizations and merge in any code changes we make to the default.

We also suggest you update this README with your own change summary for future bundle developers.

### Structure
This bundle uses our standard directory structure.  Bundles are completely self contained so should include all libraries and markup needed.

<code><pre>
/*request-ce-bundle-keg-catalog*
  /*bundle*: Initialization scripts and helpers
  /*css*: Cascading style sheets. We use Sass for the project, check our the scss directory here.
  /*fonts*: Directory of custom fonts. We use third-party fonts and included them in the libraries directory.
  /*images*: Duh.
  /*js*: All custom javascript goes here.
  /*layouts*: One or more layouts wraps your views and generally includes your HTML head elements and any content that should show up on all pages.
  /*libraries*: Include CSS, JS or other third-party libraries here including things like JQuery or bootstrap.
  /*pages*:  Individual page content views. In our example we have pages specific to our conference, i.e. feeback, local and twitter JSP.
  /*partials*: These are view snippets that get used in the top-layer JSP views.
  /*confirmation.jsp*: The default confirmation page on form submits.
  /*form-announcement.jsp*: Form JSP wrapper for announcments.
  /*form.jsp*: The default form JSP wrapper.
  /*kapp.jsp*: This is the catalog console page or self service portal page.  This typically lists the forms by category, my requests, my approvals and more.
  /*login.jsp*: The default login page. Can be overridden in your Space Admin Console. The page adds a forgot password with a resetToken.
  /*resetPassword.jsp*: The default reset password page. This will trigger the system to send an email to the user to reset their password. Note that the SMTP server needs to be configured to work.
  /*scavenger-hunt-confirmation.jsp*: The confirmation page for scavenger hunt submissions.
</pre></code>


