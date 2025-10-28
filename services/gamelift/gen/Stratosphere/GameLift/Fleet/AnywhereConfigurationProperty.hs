module Stratosphere.GameLift.Fleet.AnywhereConfigurationProperty (
        AnywhereConfigurationProperty(..), mkAnywhereConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnywhereConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-anywhereconfiguration.html>
    AnywhereConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-anywhereconfiguration.html#cfn-gamelift-fleet-anywhereconfiguration-cost>
                                   cost :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnywhereConfigurationProperty ::
  Value Prelude.Text -> AnywhereConfigurationProperty
mkAnywhereConfigurationProperty cost
  = AnywhereConfigurationProperty
      {haddock_workaround_ = (), cost = cost}
instance ToResourceProperties AnywhereConfigurationProperty where
  toResourceProperties AnywhereConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.AnywhereConfiguration",
         supportsTags = Prelude.False, properties = ["Cost" JSON..= cost]}
instance JSON.ToJSON AnywhereConfigurationProperty where
  toJSON AnywhereConfigurationProperty {..}
    = JSON.object ["Cost" JSON..= cost]
instance Property "Cost" AnywhereConfigurationProperty where
  type PropertyType "Cost" AnywhereConfigurationProperty = Value Prelude.Text
  set newValue AnywhereConfigurationProperty {..}
    = AnywhereConfigurationProperty {cost = newValue, ..}