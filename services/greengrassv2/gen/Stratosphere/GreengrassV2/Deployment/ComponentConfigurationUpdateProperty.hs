module Stratosphere.GreengrassV2.Deployment.ComponentConfigurationUpdateProperty (
        ComponentConfigurationUpdateProperty(..),
        mkComponentConfigurationUpdateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentConfigurationUpdateProperty
  = ComponentConfigurationUpdateProperty {merge :: (Prelude.Maybe (Value Prelude.Text)),
                                          reset :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkComponentConfigurationUpdateProperty ::
  ComponentConfigurationUpdateProperty
mkComponentConfigurationUpdateProperty
  = ComponentConfigurationUpdateProperty
      {merge = Prelude.Nothing, reset = Prelude.Nothing}
instance ToResourceProperties ComponentConfigurationUpdateProperty where
  toResourceProperties ComponentConfigurationUpdateProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.ComponentConfigurationUpdate",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Merge" Prelude.<$> merge,
                            (JSON..=) "Reset" Prelude.<$> reset])}
instance JSON.ToJSON ComponentConfigurationUpdateProperty where
  toJSON ComponentConfigurationUpdateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Merge" Prelude.<$> merge,
               (JSON..=) "Reset" Prelude.<$> reset]))
instance Property "Merge" ComponentConfigurationUpdateProperty where
  type PropertyType "Merge" ComponentConfigurationUpdateProperty = Value Prelude.Text
  set newValue ComponentConfigurationUpdateProperty {..}
    = ComponentConfigurationUpdateProperty
        {merge = Prelude.pure newValue, ..}
instance Property "Reset" ComponentConfigurationUpdateProperty where
  type PropertyType "Reset" ComponentConfigurationUpdateProperty = ValueList (Value Prelude.Text)
  set newValue ComponentConfigurationUpdateProperty {..}
    = ComponentConfigurationUpdateProperty
        {reset = Prelude.pure newValue, ..}