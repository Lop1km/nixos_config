{ pkgs, config, ... }:
{
  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ pkgs.keepassxc ];
    profiles.user = {
      settings = {

        "browser.uidensity" = 1;

        "extensions.pocket.api" = "";
        "extensions.pocket.enabled" = false;
        "extensions.pocket.site" = "";
        "extensions.pocket.oAuthConsumerKey" = "";

        "full-screen-api.transition-duration.enter" = "0";
        "full-screen-api.transition-duration.leave" = "0";
        "full-screen-api.warning.timeout" = 0;

        #  "privacy.trackingprotection.enabled" = true;
        #  "privacy.donottrackheader.enabled" = true;

        #  "toolkit.telemetry.archive.enabled" = false;
        #  "toolkit.telemetry.bhrPing.enabled" = false;
        #  "toolkit.telemetry.cachedClientID" = "";
        #  "toolkit.telemetry.firstShutdownPing.enabled" = false;
        "toolkit.telemetry.hybridContent.enabled" = false;
        #  "toolkit.telemetry.newProfilePing.enabled" = false;
        "toolkit.telemetry.previousBuildID" = "";
        "toolkit.telemetry.reportingpolicy.firstRun" = false;
        #  "toolkit.telemetry.server" = "";
        "toolkit.telemetry.server_owner" = "";
        #  "toolkit.telemetry.shutdownPingSender.enabled" = false;
        #  "toolkit.telemetry.unified" = false;
        #  "toolkit.telemetry.updatePing.enabled" = false;
        #  "datareporting.healthreport.infoURL" = "";
        #  "datareporting.healthreport.uploadEnabled" = false;
        #  "datareporting.policy.dataSubmissionEnabled" = false;
        "datareporting.policy.firstRunURL" = "";
        #  "browser.tabs.crashReporting.sendReport" = false;
        "browser.tabs.crashReporting.email" = false;
        "browser.tabs.crashReporting.emailMe" = false;
        #  "breakpad.reportURL" = "";
        "security.ssl.errorReporting.automatic" = false;
        "toolkit.crashreporter.infoURL" = "";
        "network.allow-experiments" = false;
        "dom.ipc.plugins.reportCrashURL" = false;
        "dom.ipc.plugins.flash.subprocess.crashreporter.enabled" = false;

        #ARKEN version: 140
        #       "_user.js.parrot" = "START: Oh yes, the Norwegian Blue... what's wrong with it?";
        #"browser.aboutConfig.showWarning" = false;
        #"browser.startup.page" = 0;
        #"browser.startup.homepage" = "chrome://browser/content/blanktab.html";
        #"browser.newtabpage.enabled" = false;
        #"browser.newtabpage.activity-stream.showSponsored" = false;
        #"browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
        #"browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;
        #"browser.newtabpage.activity-stream.default.sites" = "";
        #"geo.provider.ms-windows-location" = false;
        #"geo.provider.use_corelocation" = false;
        #"geo.provider.use_geoclue" = false;
        #"extensions.getAddons.showPane" = false;
        #"extensions.htmlaboutaddons.recommendations.enabled" = false;
        #"browser.discovery.enabled" = false;
        #"browser.newtabpage.activity-stream.feeds.telemetry" = false;

        # "_user.js.parrot" = "0100 syntax error: the parrot's dead!";

      };
      # extraConfig = builtins.readFile ./extra/arkenfox.js;
      extraConfig = builtins.readFile "${pkgs.arkenfox-userjs}/user.js";
    };
    configPath = ".mozilla/firefox";
  };
}
