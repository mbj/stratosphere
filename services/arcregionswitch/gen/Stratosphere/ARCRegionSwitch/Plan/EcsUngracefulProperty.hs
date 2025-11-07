module Stratosphere.ARCRegionSwitch.Plan.EcsUngracefulProperty (
        EcsUngracefulProperty(..), mkEcsUngracefulProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsUngracefulProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecsungraceful.html>
    EcsUngracefulProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecsungraceful.html#cfn-arcregionswitch-plan-ecsungraceful-minimumsuccesspercentage>
                           minimumSuccessPercentage :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsUngracefulProperty ::
  Value Prelude.Double -> EcsUngracefulProperty
mkEcsUngracefulProperty minimumSuccessPercentage
  = EcsUngracefulProperty
      {haddock_workaround_ = (),
       minimumSuccessPercentage = minimumSuccessPercentage}
instance ToResourceProperties EcsUngracefulProperty where
  toResourceProperties EcsUngracefulProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.EcsUngraceful",
         supportsTags = Prelude.False,
         properties = ["MinimumSuccessPercentage"
                         JSON..= minimumSuccessPercentage]}
instance JSON.ToJSON EcsUngracefulProperty where
  toJSON EcsUngracefulProperty {..}
    = JSON.object
        ["MinimumSuccessPercentage" JSON..= minimumSuccessPercentage]
instance Property "MinimumSuccessPercentage" EcsUngracefulProperty where
  type PropertyType "MinimumSuccessPercentage" EcsUngracefulProperty = Value Prelude.Double
  set newValue EcsUngracefulProperty {..}
    = EcsUngracefulProperty {minimumSuccessPercentage = newValue, ..}