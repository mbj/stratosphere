module Stratosphere.GameLift.MatchmakingConfiguration.GamePropertyProperty (
        GamePropertyProperty(..), mkGamePropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GamePropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html>
    GamePropertyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-key>
                          key :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-value>
                          value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGamePropertyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GamePropertyProperty
mkGamePropertyProperty key value
  = GamePropertyProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties GamePropertyProperty where
  toResourceProperties GamePropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::MatchmakingConfiguration.GameProperty",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON GamePropertyProperty where
  toJSON GamePropertyProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" GamePropertyProperty where
  type PropertyType "Key" GamePropertyProperty = Value Prelude.Text
  set newValue GamePropertyProperty {..}
    = GamePropertyProperty {key = newValue, ..}
instance Property "Value" GamePropertyProperty where
  type PropertyType "Value" GamePropertyProperty = Value Prelude.Text
  set newValue GamePropertyProperty {..}
    = GamePropertyProperty {value = newValue, ..}