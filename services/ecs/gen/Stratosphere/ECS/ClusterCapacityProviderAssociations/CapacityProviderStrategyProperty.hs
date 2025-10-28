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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-clustercapacityproviderassociations-capacityproviderstrategy.html>
    CapacityProviderStrategyProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-clustercapacityproviderassociations-capacityproviderstrategy.html#cfn-ecs-clustercapacityproviderassociations-capacityproviderstrategy-base>
                                      base :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-clustercapacityproviderassociations-capacityproviderstrategy.html#cfn-ecs-clustercapacityproviderassociations-capacityproviderstrategy-capacityprovider>
                                      capacityProvider :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-clustercapacityproviderassociations-capacityproviderstrategy.html#cfn-ecs-clustercapacityproviderassociations-capacityproviderstrategy-weight>
                                      weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityProviderStrategyProperty ::
  Value Prelude.Text -> CapacityProviderStrategyProperty
mkCapacityProviderStrategyProperty capacityProvider
  = CapacityProviderStrategyProperty
      {haddock_workaround_ = (), capacityProvider = capacityProvider,
       base = Prelude.Nothing, weight = Prelude.Nothing}
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