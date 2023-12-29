module Stratosphere.RUM.AppMonitor.AppMonitorConfigurationProperty (
        module Exports, AppMonitorConfigurationProperty(..),
        mkAppMonitorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.MetricDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppMonitorConfigurationProperty
  = AppMonitorConfigurationProperty {allowCookies :: (Prelude.Maybe (Value Prelude.Bool)),
                                     enableXRay :: (Prelude.Maybe (Value Prelude.Bool)),
                                     excludedPages :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     favoritePages :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     guestRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     identityPoolId :: (Prelude.Maybe (Value Prelude.Text)),
                                     includedPages :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     metricDestinations :: (Prelude.Maybe [MetricDestinationProperty]),
                                     sessionSampleRate :: (Prelude.Maybe (Value Prelude.Double)),
                                     telemetries :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppMonitorConfigurationProperty ::
  AppMonitorConfigurationProperty
mkAppMonitorConfigurationProperty
  = AppMonitorConfigurationProperty
      {allowCookies = Prelude.Nothing, enableXRay = Prelude.Nothing,
       excludedPages = Prelude.Nothing, favoritePages = Prelude.Nothing,
       guestRoleArn = Prelude.Nothing, identityPoolId = Prelude.Nothing,
       includedPages = Prelude.Nothing,
       metricDestinations = Prelude.Nothing,
       sessionSampleRate = Prelude.Nothing, telemetries = Prelude.Nothing}
instance ToResourceProperties AppMonitorConfigurationProperty where
  toResourceProperties AppMonitorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.AppMonitorConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowCookies" Prelude.<$> allowCookies,
                            (JSON..=) "EnableXRay" Prelude.<$> enableXRay,
                            (JSON..=) "ExcludedPages" Prelude.<$> excludedPages,
                            (JSON..=) "FavoritePages" Prelude.<$> favoritePages,
                            (JSON..=) "GuestRoleArn" Prelude.<$> guestRoleArn,
                            (JSON..=) "IdentityPoolId" Prelude.<$> identityPoolId,
                            (JSON..=) "IncludedPages" Prelude.<$> includedPages,
                            (JSON..=) "MetricDestinations" Prelude.<$> metricDestinations,
                            (JSON..=) "SessionSampleRate" Prelude.<$> sessionSampleRate,
                            (JSON..=) "Telemetries" Prelude.<$> telemetries])}
instance JSON.ToJSON AppMonitorConfigurationProperty where
  toJSON AppMonitorConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowCookies" Prelude.<$> allowCookies,
               (JSON..=) "EnableXRay" Prelude.<$> enableXRay,
               (JSON..=) "ExcludedPages" Prelude.<$> excludedPages,
               (JSON..=) "FavoritePages" Prelude.<$> favoritePages,
               (JSON..=) "GuestRoleArn" Prelude.<$> guestRoleArn,
               (JSON..=) "IdentityPoolId" Prelude.<$> identityPoolId,
               (JSON..=) "IncludedPages" Prelude.<$> includedPages,
               (JSON..=) "MetricDestinations" Prelude.<$> metricDestinations,
               (JSON..=) "SessionSampleRate" Prelude.<$> sessionSampleRate,
               (JSON..=) "Telemetries" Prelude.<$> telemetries]))
instance Property "AllowCookies" AppMonitorConfigurationProperty where
  type PropertyType "AllowCookies" AppMonitorConfigurationProperty = Value Prelude.Bool
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {allowCookies = Prelude.pure newValue, ..}
instance Property "EnableXRay" AppMonitorConfigurationProperty where
  type PropertyType "EnableXRay" AppMonitorConfigurationProperty = Value Prelude.Bool
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {enableXRay = Prelude.pure newValue, ..}
instance Property "ExcludedPages" AppMonitorConfigurationProperty where
  type PropertyType "ExcludedPages" AppMonitorConfigurationProperty = ValueList Prelude.Text
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {excludedPages = Prelude.pure newValue, ..}
instance Property "FavoritePages" AppMonitorConfigurationProperty where
  type PropertyType "FavoritePages" AppMonitorConfigurationProperty = ValueList Prelude.Text
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {favoritePages = Prelude.pure newValue, ..}
instance Property "GuestRoleArn" AppMonitorConfigurationProperty where
  type PropertyType "GuestRoleArn" AppMonitorConfigurationProperty = Value Prelude.Text
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {guestRoleArn = Prelude.pure newValue, ..}
instance Property "IdentityPoolId" AppMonitorConfigurationProperty where
  type PropertyType "IdentityPoolId" AppMonitorConfigurationProperty = Value Prelude.Text
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {identityPoolId = Prelude.pure newValue, ..}
instance Property "IncludedPages" AppMonitorConfigurationProperty where
  type PropertyType "IncludedPages" AppMonitorConfigurationProperty = ValueList Prelude.Text
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {includedPages = Prelude.pure newValue, ..}
instance Property "MetricDestinations" AppMonitorConfigurationProperty where
  type PropertyType "MetricDestinations" AppMonitorConfigurationProperty = [MetricDestinationProperty]
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {metricDestinations = Prelude.pure newValue, ..}
instance Property "SessionSampleRate" AppMonitorConfigurationProperty where
  type PropertyType "SessionSampleRate" AppMonitorConfigurationProperty = Value Prelude.Double
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {sessionSampleRate = Prelude.pure newValue, ..}
instance Property "Telemetries" AppMonitorConfigurationProperty where
  type PropertyType "Telemetries" AppMonitorConfigurationProperty = ValueList Prelude.Text
  set newValue AppMonitorConfigurationProperty {..}
    = AppMonitorConfigurationProperty
        {telemetries = Prelude.pure newValue, ..}