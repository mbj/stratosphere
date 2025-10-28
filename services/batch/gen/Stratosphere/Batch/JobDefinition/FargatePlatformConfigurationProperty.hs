module Stratosphere.Batch.JobDefinition.FargatePlatformConfigurationProperty (
        FargatePlatformConfigurationProperty(..),
        mkFargatePlatformConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FargatePlatformConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-fargateplatformconfiguration.html>
    FargatePlatformConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-fargateplatformconfiguration.html#cfn-batch-jobdefinition-containerproperties-fargateplatformconfiguration-platformversion>
                                          platformVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFargatePlatformConfigurationProperty ::
  FargatePlatformConfigurationProperty
mkFargatePlatformConfigurationProperty
  = FargatePlatformConfigurationProperty
      {platformVersion = Prelude.Nothing}
instance ToResourceProperties FargatePlatformConfigurationProperty where
  toResourceProperties FargatePlatformConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.FargatePlatformConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PlatformVersion" Prelude.<$> platformVersion])}
instance JSON.ToJSON FargatePlatformConfigurationProperty where
  toJSON FargatePlatformConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PlatformVersion" Prelude.<$> platformVersion]))
instance Property "PlatformVersion" FargatePlatformConfigurationProperty where
  type PropertyType "PlatformVersion" FargatePlatformConfigurationProperty = Value Prelude.Text
  set newValue FargatePlatformConfigurationProperty {}
    = FargatePlatformConfigurationProperty
        {platformVersion = Prelude.pure newValue, ..}