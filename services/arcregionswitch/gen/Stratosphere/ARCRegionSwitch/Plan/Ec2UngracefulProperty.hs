module Stratosphere.ARCRegionSwitch.Plan.Ec2UngracefulProperty (
        Ec2UngracefulProperty(..), mkEc2UngracefulProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ec2UngracefulProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2ungraceful.html>
    Ec2UngracefulProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2ungraceful.html#cfn-arcregionswitch-plan-ec2ungraceful-minimumsuccesspercentage>
                           minimumSuccessPercentage :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEc2UngracefulProperty ::
  Value Prelude.Double -> Ec2UngracefulProperty
mkEc2UngracefulProperty minimumSuccessPercentage
  = Ec2UngracefulProperty
      {haddock_workaround_ = (),
       minimumSuccessPercentage = minimumSuccessPercentage}
instance ToResourceProperties Ec2UngracefulProperty where
  toResourceProperties Ec2UngracefulProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Ec2Ungraceful",
         supportsTags = Prelude.False,
         properties = ["MinimumSuccessPercentage"
                         JSON..= minimumSuccessPercentage]}
instance JSON.ToJSON Ec2UngracefulProperty where
  toJSON Ec2UngracefulProperty {..}
    = JSON.object
        ["MinimumSuccessPercentage" JSON..= minimumSuccessPercentage]
instance Property "MinimumSuccessPercentage" Ec2UngracefulProperty where
  type PropertyType "MinimumSuccessPercentage" Ec2UngracefulProperty = Value Prelude.Double
  set newValue Ec2UngracefulProperty {..}
    = Ec2UngracefulProperty {minimumSuccessPercentage = newValue, ..}