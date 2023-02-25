module Stratosphere.ECS.Service.CapacityProviderStrategyItemProperty (
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
                                          capacityProvider :: (Prelude.Maybe (Value Prelude.Text)),
                                          weight :: (Prelude.Maybe (Value Prelude.Integer))}
mkCapacityProviderStrategyItemProperty ::
  CapacityProviderStrategyItemProperty
mkCapacityProviderStrategyItemProperty
  = CapacityProviderStrategyItemProperty
      {base = Prelude.Nothing, capacityProvider = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties CapacityProviderStrategyItemProperty where
  toResourceProperties CapacityProviderStrategyItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.CapacityProviderStrategyItem",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Base" Prelude.<$> base,
                            (JSON..=) "CapacityProvider" Prelude.<$> capacityProvider,
                            (JSON..=) "Weight" Prelude.<$> weight])}
instance JSON.ToJSON CapacityProviderStrategyItemProperty where
  toJSON CapacityProviderStrategyItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Base" Prelude.<$> base,
               (JSON..=) "CapacityProvider" Prelude.<$> capacityProvider,
               (JSON..=) "Weight" Prelude.<$> weight]))
instance Property "Base" CapacityProviderStrategyItemProperty where
  type PropertyType "Base" CapacityProviderStrategyItemProperty = Value Prelude.Integer
  set newValue CapacityProviderStrategyItemProperty {..}
    = CapacityProviderStrategyItemProperty
        {base = Prelude.pure newValue, ..}
instance Property "CapacityProvider" CapacityProviderStrategyItemProperty where
  type PropertyType "CapacityProvider" CapacityProviderStrategyItemProperty = Value Prelude.Text
  set newValue CapacityProviderStrategyItemProperty {..}
    = CapacityProviderStrategyItemProperty
        {capacityProvider = Prelude.pure newValue, ..}
instance Property "Weight" CapacityProviderStrategyItemProperty where
  type PropertyType "Weight" CapacityProviderStrategyItemProperty = Value Prelude.Integer
  set newValue CapacityProviderStrategyItemProperty {..}
    = CapacityProviderStrategyItemProperty
        {weight = Prelude.pure newValue, ..}