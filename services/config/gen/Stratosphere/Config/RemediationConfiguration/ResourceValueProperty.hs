module Stratosphere.Config.RemediationConfiguration.ResourceValueProperty (
        ResourceValueProperty(..), mkResourceValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceValueProperty
  = ResourceValueProperty {value :: (Prelude.Maybe (Value Prelude.Text))}
mkResourceValueProperty :: ResourceValueProperty
mkResourceValueProperty
  = ResourceValueProperty {value = Prelude.Nothing}
instance ToResourceProperties ResourceValueProperty where
  toResourceProperties ResourceValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::RemediationConfiguration.ResourceValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ResourceValueProperty where
  toJSON ResourceValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" ResourceValueProperty where
  type PropertyType "Value" ResourceValueProperty = Value Prelude.Text
  set newValue ResourceValueProperty {}
    = ResourceValueProperty {value = Prelude.pure newValue, ..}