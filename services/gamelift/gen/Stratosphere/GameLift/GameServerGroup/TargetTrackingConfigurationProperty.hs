module Stratosphere.GameLift.GameServerGroup.TargetTrackingConfigurationProperty (
        TargetTrackingConfigurationProperty(..),
        mkTargetTrackingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-targettrackingconfiguration.html>
    TargetTrackingConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-targettrackingconfiguration.html#cfn-gamelift-gameservergroup-targettrackingconfiguration-targetvalue>
                                         targetValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingConfigurationProperty ::
  Value Prelude.Double -> TargetTrackingConfigurationProperty
mkTargetTrackingConfigurationProperty targetValue
  = TargetTrackingConfigurationProperty
      {haddock_workaround_ = (), targetValue = targetValue}
instance ToResourceProperties TargetTrackingConfigurationProperty where
  toResourceProperties TargetTrackingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameServerGroup.TargetTrackingConfiguration",
         supportsTags = Prelude.False,
         properties = ["TargetValue" JSON..= targetValue]}
instance JSON.ToJSON TargetTrackingConfigurationProperty where
  toJSON TargetTrackingConfigurationProperty {..}
    = JSON.object ["TargetValue" JSON..= targetValue]
instance Property "TargetValue" TargetTrackingConfigurationProperty where
  type PropertyType "TargetValue" TargetTrackingConfigurationProperty = Value Prelude.Double
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty {targetValue = newValue, ..}