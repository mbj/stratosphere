module Stratosphere.GameLift.ContainerFleet.TargetConfigurationProperty (
        TargetConfigurationProperty(..), mkTargetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-targetconfiguration.html>
    TargetConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-targetconfiguration.html#cfn-gamelift-containerfleet-targetconfiguration-targetvalue>
                                 targetValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetConfigurationProperty ::
  Value Prelude.Double -> TargetConfigurationProperty
mkTargetConfigurationProperty targetValue
  = TargetConfigurationProperty
      {haddock_workaround_ = (), targetValue = targetValue}
instance ToResourceProperties TargetConfigurationProperty where
  toResourceProperties TargetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.TargetConfiguration",
         supportsTags = Prelude.False,
         properties = ["TargetValue" JSON..= targetValue]}
instance JSON.ToJSON TargetConfigurationProperty where
  toJSON TargetConfigurationProperty {..}
    = JSON.object ["TargetValue" JSON..= targetValue]
instance Property "TargetValue" TargetConfigurationProperty where
  type PropertyType "TargetValue" TargetConfigurationProperty = Value Prelude.Double
  set newValue TargetConfigurationProperty {..}
    = TargetConfigurationProperty {targetValue = newValue, ..}