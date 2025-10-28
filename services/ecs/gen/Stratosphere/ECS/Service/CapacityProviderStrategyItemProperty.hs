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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html>
    CapacityProviderStrategyItemProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html#cfn-ecs-service-capacityproviderstrategyitem-base>
                                          base :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html#cfn-ecs-service-capacityproviderstrategyitem-capacityprovider>
                                          capacityProvider :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html#cfn-ecs-service-capacityproviderstrategyitem-weight>
                                          weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityProviderStrategyItemProperty ::
  CapacityProviderStrategyItemProperty
mkCapacityProviderStrategyItemProperty
  = CapacityProviderStrategyItemProperty
      {haddock_workaround_ = (), base = Prelude.Nothing,
       capacityProvider = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties CapacityProviderStrategyItemProperty where
  toResourceProperties CapacityProviderStrategyItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.CapacityProviderStrategyItem",
         supportsTags = Prelude.False,
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