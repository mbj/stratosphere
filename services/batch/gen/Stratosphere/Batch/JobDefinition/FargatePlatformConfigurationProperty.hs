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
  = FargatePlatformConfigurationProperty {platformVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkFargatePlatformConfigurationProperty ::
  FargatePlatformConfigurationProperty
mkFargatePlatformConfigurationProperty
  = FargatePlatformConfigurationProperty
      {platformVersion = Prelude.Nothing}
instance ToResourceProperties FargatePlatformConfigurationProperty where
  toResourceProperties FargatePlatformConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.FargatePlatformConfiguration",
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