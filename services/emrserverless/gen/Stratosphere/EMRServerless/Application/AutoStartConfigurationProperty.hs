module Stratosphere.EMRServerless.Application.AutoStartConfigurationProperty (
        AutoStartConfigurationProperty(..),
        mkAutoStartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoStartConfigurationProperty
  = AutoStartConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkAutoStartConfigurationProperty :: AutoStartConfigurationProperty
mkAutoStartConfigurationProperty
  = AutoStartConfigurationProperty {enabled = Prelude.Nothing}
instance ToResourceProperties AutoStartConfigurationProperty where
  toResourceProperties AutoStartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.AutoStartConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON AutoStartConfigurationProperty where
  toJSON AutoStartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" AutoStartConfigurationProperty where
  type PropertyType "Enabled" AutoStartConfigurationProperty = Value Prelude.Bool
  set newValue AutoStartConfigurationProperty {}
    = AutoStartConfigurationProperty
        {enabled = Prelude.pure newValue, ..}