module Stratosphere.Pipes.Pipe.CapacityProviderStrategyItemProperty (
        CapacityProviderStrategyItemProperty(..),
        mkCapacityProviderStrategyItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityProviderStrategyItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-capacityproviderstrategyitem.html>
    CapacityProviderStrategyItemProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-capacityproviderstrategyitem.html#cfn-pipes-pipe-capacityproviderstrategyitem-base>
                                          base :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-capacityproviderstrategyitem.html#cfn-pipes-pipe-capacityproviderstrategyitem-capacityprovider>
                                          capacityProvider :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-capacityproviderstrategyitem.html#cfn-pipes-pipe-capacityproviderstrategyitem-weight>
                                          weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityProviderStrategyItemProperty ::
  Value Prelude.Text -> CapacityProviderStrategyItemProperty
mkCapacityProviderStrategyItemProperty capacityProvider
  = CapacityProviderStrategyItemProperty
      {haddock_workaround_ = (), capacityProvider = capacityProvider,
       base = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties CapacityProviderStrategyItemProperty where
  toResourceProperties CapacityProviderStrategyItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.CapacityProviderStrategyItem",
         supportsTags = Prelude.False,
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