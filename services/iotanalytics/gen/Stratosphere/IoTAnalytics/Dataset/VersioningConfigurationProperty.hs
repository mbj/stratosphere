module Stratosphere.IoTAnalytics.Dataset.VersioningConfigurationProperty (
        VersioningConfigurationProperty(..),
        mkVersioningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VersioningConfigurationProperty
  = VersioningConfigurationProperty {maxVersions :: (Prelude.Maybe (Value Prelude.Integer)),
                                     unlimited :: (Prelude.Maybe (Value Prelude.Bool))}
mkVersioningConfigurationProperty ::
  VersioningConfigurationProperty
mkVersioningConfigurationProperty
  = VersioningConfigurationProperty
      {maxVersions = Prelude.Nothing, unlimited = Prelude.Nothing}
instance ToResourceProperties VersioningConfigurationProperty where
  toResourceProperties VersioningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.VersioningConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxVersions" Prelude.<$> maxVersions,
                            (JSON..=) "Unlimited" Prelude.<$> unlimited])}
instance JSON.ToJSON VersioningConfigurationProperty where
  toJSON VersioningConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxVersions" Prelude.<$> maxVersions,
               (JSON..=) "Unlimited" Prelude.<$> unlimited]))
instance Property "MaxVersions" VersioningConfigurationProperty where
  type PropertyType "MaxVersions" VersioningConfigurationProperty = Value Prelude.Integer
  set newValue VersioningConfigurationProperty {..}
    = VersioningConfigurationProperty
        {maxVersions = Prelude.pure newValue, ..}
instance Property "Unlimited" VersioningConfigurationProperty where
  type PropertyType "Unlimited" VersioningConfigurationProperty = Value Prelude.Bool
  set newValue VersioningConfigurationProperty {..}
    = VersioningConfigurationProperty
        {unlimited = Prelude.pure newValue, ..}