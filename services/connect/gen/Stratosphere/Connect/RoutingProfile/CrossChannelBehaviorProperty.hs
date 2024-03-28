module Stratosphere.Connect.RoutingProfile.CrossChannelBehaviorProperty (
        CrossChannelBehaviorProperty(..), mkCrossChannelBehaviorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrossChannelBehaviorProperty
  = CrossChannelBehaviorProperty {behaviorType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossChannelBehaviorProperty ::
  Value Prelude.Text -> CrossChannelBehaviorProperty
mkCrossChannelBehaviorProperty behaviorType
  = CrossChannelBehaviorProperty {behaviorType = behaviorType}
instance ToResourceProperties CrossChannelBehaviorProperty where
  toResourceProperties CrossChannelBehaviorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::RoutingProfile.CrossChannelBehavior",
         supportsTags = Prelude.False,
         properties = ["BehaviorType" JSON..= behaviorType]}
instance JSON.ToJSON CrossChannelBehaviorProperty where
  toJSON CrossChannelBehaviorProperty {..}
    = JSON.object ["BehaviorType" JSON..= behaviorType]
instance Property "BehaviorType" CrossChannelBehaviorProperty where
  type PropertyType "BehaviorType" CrossChannelBehaviorProperty = Value Prelude.Text
  set newValue CrossChannelBehaviorProperty {}
    = CrossChannelBehaviorProperty {behaviorType = newValue, ..}