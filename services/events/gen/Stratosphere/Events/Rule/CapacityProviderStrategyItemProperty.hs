module Stratosphere.Events.Rule.CapacityProviderStrategyItemProperty (
        CapacityProviderStrategyItemProperty(..),
        mkCapacityProviderStrategyItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityProviderStrategyItemProperty
  = CapacityProviderStrategyItemProperty {base :: (Prelude.Maybe (Value Prelude.Integer)),
                                          capacityProvider :: (Value Prelude.Text),
                                          weight :: (Prelude.Maybe (Value Prelude.Integer))}
mkCapacityProviderStrategyItemProperty ::
  Value Prelude.Text -> CapacityProviderStrategyItemProperty
mkCapacityProviderStrategyItemProperty capacityProvider
  = CapacityProviderStrategyItemProperty
      {capacityProvider = capacityProvider, base = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties CapacityProviderStrategyItemProperty where
  toResourceProperties CapacityProviderStrategyItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.CapacityProviderStrategyItem",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CapacityProvider" JSON..= capacityProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "Base" Prelude.<$> base,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON CapacityProviderStrategyItemProperty where
  toJSON CapacityProviderStrategyItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CapacityProvider" JSON..= capacityProvider]
              (Prelude.catMaybes
                 [(JSON..=) "Base" Prelude.<$> base,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "Base" CapacityProviderStrategyItemProperty where
  type PropertyType "Base" CapacityProviderStrategyItemProperty = Value Prelude.Integer
  set newValue CapacityProviderStrategyItemProperty {..}
    = CapacityProviderStrategyItemProperty
        {base = Prelude.pure newValue, ..}
instance Property "CapacityProvider" CapacityProviderStrategyItemProperty where
  type PropertyType "CapacityProvider" CapacityProviderStrategyItemProperty = Value Prelude.Text
  set newValue CapacityProviderStrategyItemProperty {..}
    = CapacityProviderStrategyItemProperty
        {capacityProvider = newValue, ..}
instance Property "Weight" CapacityProviderStrategyItemProperty where
  type PropertyType "Weight" CapacityProviderStrategyItemProperty = Value Prelude.Integer
  set newValue CapacityProviderStrategyItemProperty {..}
    = CapacityProviderStrategyItemProperty
        {weight = Prelude.pure newValue, ..}