module Stratosphere.ECS.ClusterCapacityProviderAssociations.CapacityProviderStrategyProperty (
        CapacityProviderStrategyProperty(..),
        mkCapacityProviderStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityProviderStrategyProperty
  = CapacityProviderStrategyProperty {base :: (Prelude.Maybe (Value Prelude.Integer)),
                                      capacityProvider :: (Value Prelude.Text),
                                      weight :: (Prelude.Maybe (Value Prelude.Integer))}
mkCapacityProviderStrategyProperty ::
  Value Prelude.Text -> CapacityProviderStrategyProperty
mkCapacityProviderStrategyProperty capacityProvider
  = CapacityProviderStrategyProperty
      {capacityProvider = capacityProvider, base = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties CapacityProviderStrategyProperty where
  toResourceProperties CapacityProviderStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::ClusterCapacityProviderAssociations.CapacityProviderStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CapacityProvider" JSON..= capacityProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "Base" Prelude.<$> base,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON CapacityProviderStrategyProperty where
  toJSON CapacityProviderStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CapacityProvider" JSON..= capacityProvider]
              (Prelude.catMaybes
                 [(JSON..=) "Base" Prelude.<$> base,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "Base" CapacityProviderStrategyProperty where
  type PropertyType "Base" CapacityProviderStrategyProperty = Value Prelude.Integer
  set newValue CapacityProviderStrategyProperty {..}
    = CapacityProviderStrategyProperty
        {base = Prelude.pure newValue, ..}
instance Property "CapacityProvider" CapacityProviderStrategyProperty where
  type PropertyType "CapacityProvider" CapacityProviderStrategyProperty = Value Prelude.Text
  set newValue CapacityProviderStrategyProperty {..}
    = CapacityProviderStrategyProperty
        {capacityProvider = newValue, ..}
instance Property "Weight" CapacityProviderStrategyProperty where
  type PropertyType "Weight" CapacityProviderStrategyProperty = Value Prelude.Integer
  set newValue CapacityProviderStrategyProperty {..}
    = CapacityProviderStrategyProperty
        {weight = Prelude.pure newValue, ..}