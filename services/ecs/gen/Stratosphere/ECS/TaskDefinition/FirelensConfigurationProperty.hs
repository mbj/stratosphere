module Stratosphere.ECS.TaskDefinition.FirelensConfigurationProperty (
        FirelensConfigurationProperty(..), mkFirelensConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirelensConfigurationProperty
  = FirelensConfigurationProperty {options :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                   type' :: (Prelude.Maybe (Value Prelude.Text))}
mkFirelensConfigurationProperty :: FirelensConfigurationProperty
mkFirelensConfigurationProperty
  = FirelensConfigurationProperty
      {options = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties FirelensConfigurationProperty where
  toResourceProperties FirelensConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.FirelensConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Options" Prelude.<$> options,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON FirelensConfigurationProperty where
  toJSON FirelensConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Options" Prelude.<$> options,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Options" FirelensConfigurationProperty where
  type PropertyType "Options" FirelensConfigurationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue FirelensConfigurationProperty {..}
    = FirelensConfigurationProperty
        {options = Prelude.pure newValue, ..}
instance Property "Type" FirelensConfigurationProperty where
  type PropertyType "Type" FirelensConfigurationProperty = Value Prelude.Text
  set newValue FirelensConfigurationProperty {..}
    = FirelensConfigurationProperty {type' = Prelude.pure newValue, ..}