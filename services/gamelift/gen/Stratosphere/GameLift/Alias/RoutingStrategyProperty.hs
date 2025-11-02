module Stratosphere.GameLift.Alias.RoutingStrategyProperty (
        RoutingStrategyProperty(..), mkRoutingStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html>
    RoutingStrategyProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-fleetid>
                             fleetId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-message>
                             message :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-type>
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingStrategyProperty ::
  Value Prelude.Text -> RoutingStrategyProperty
mkRoutingStrategyProperty type'
  = RoutingStrategyProperty
      {haddock_workaround_ = (), type' = type',
       fleetId = Prelude.Nothing, message = Prelude.Nothing}
instance ToResourceProperties RoutingStrategyProperty where
  toResourceProperties RoutingStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Alias.RoutingStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "FleetId" Prelude.<$> fleetId,
                               (JSON..=) "Message" Prelude.<$> message]))}
instance JSON.ToJSON RoutingStrategyProperty where
  toJSON RoutingStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "FleetId" Prelude.<$> fleetId,
                  (JSON..=) "Message" Prelude.<$> message])))
instance Property "FleetId" RoutingStrategyProperty where
  type PropertyType "FleetId" RoutingStrategyProperty = Value Prelude.Text
  set newValue RoutingStrategyProperty {..}
    = RoutingStrategyProperty {fleetId = Prelude.pure newValue, ..}
instance Property "Message" RoutingStrategyProperty where
  type PropertyType "Message" RoutingStrategyProperty = Value Prelude.Text
  set newValue RoutingStrategyProperty {..}
    = RoutingStrategyProperty {message = Prelude.pure newValue, ..}
instance Property "Type" RoutingStrategyProperty where
  type PropertyType "Type" RoutingStrategyProperty = Value Prelude.Text
  set newValue RoutingStrategyProperty {..}
    = RoutingStrategyProperty {type' = newValue, ..}