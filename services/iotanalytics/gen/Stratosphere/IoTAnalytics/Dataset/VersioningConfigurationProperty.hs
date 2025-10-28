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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html>
    VersioningConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html#cfn-iotanalytics-dataset-versioningconfiguration-maxversions>
                                     maxVersions :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html#cfn-iotanalytics-dataset-versioningconfiguration-unlimited>
                                     unlimited :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVersioningConfigurationProperty ::
  VersioningConfigurationProperty
mkVersioningConfigurationProperty
  = VersioningConfigurationProperty
      {haddock_workaround_ = (), maxVersions = Prelude.Nothing,
       unlimited = Prelude.Nothing}
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