module Stratosphere.Pinpoint.ApplicationSettings (
        module Exports, ApplicationSettings(..), mkApplicationSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.ApplicationSettings.CampaignHookProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.ApplicationSettings.LimitsProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.ApplicationSettings.QuietTimeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationSettings
  = ApplicationSettings {applicationId :: (Value Prelude.Text),
                         campaignHook :: (Prelude.Maybe CampaignHookProperty),
                         cloudWatchMetricsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         limits :: (Prelude.Maybe LimitsProperty),
                         quietTime :: (Prelude.Maybe QuietTimeProperty)}
mkApplicationSettings :: Value Prelude.Text -> ApplicationSettings
mkApplicationSettings applicationId
  = ApplicationSettings
      {applicationId = applicationId, campaignHook = Prelude.Nothing,
       cloudWatchMetricsEnabled = Prelude.Nothing,
       limits = Prelude.Nothing, quietTime = Prelude.Nothing}
instance ToResourceProperties ApplicationSettings where
  toResourceProperties ApplicationSettings {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::ApplicationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId]
                           (Prelude.catMaybes
                              [(JSON..=) "CampaignHook" Prelude.<$> campaignHook,
                               (JSON..=) "CloudWatchMetricsEnabled"
                                 Prelude.<$> cloudWatchMetricsEnabled,
                               (JSON..=) "Limits" Prelude.<$> limits,
                               (JSON..=) "QuietTime" Prelude.<$> quietTime]))}
instance JSON.ToJSON ApplicationSettings where
  toJSON ApplicationSettings {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId]
              (Prelude.catMaybes
                 [(JSON..=) "CampaignHook" Prelude.<$> campaignHook,
                  (JSON..=) "CloudWatchMetricsEnabled"
                    Prelude.<$> cloudWatchMetricsEnabled,
                  (JSON..=) "Limits" Prelude.<$> limits,
                  (JSON..=) "QuietTime" Prelude.<$> quietTime])))
instance Property "ApplicationId" ApplicationSettings where
  type PropertyType "ApplicationId" ApplicationSettings = Value Prelude.Text
  set newValue ApplicationSettings {..}
    = ApplicationSettings {applicationId = newValue, ..}
instance Property "CampaignHook" ApplicationSettings where
  type PropertyType "CampaignHook" ApplicationSettings = CampaignHookProperty
  set newValue ApplicationSettings {..}
    = ApplicationSettings {campaignHook = Prelude.pure newValue, ..}
instance Property "CloudWatchMetricsEnabled" ApplicationSettings where
  type PropertyType "CloudWatchMetricsEnabled" ApplicationSettings = Value Prelude.Bool
  set newValue ApplicationSettings {..}
    = ApplicationSettings
        {cloudWatchMetricsEnabled = Prelude.pure newValue, ..}
instance Property "Limits" ApplicationSettings where
  type PropertyType "Limits" ApplicationSettings = LimitsProperty
  set newValue ApplicationSettings {..}
    = ApplicationSettings {limits = Prelude.pure newValue, ..}
instance Property "QuietTime" ApplicationSettings where
  type PropertyType "QuietTime" ApplicationSettings = QuietTimeProperty
  set newValue ApplicationSettings {..}
    = ApplicationSettings {quietTime = Prelude.pure newValue, ..}