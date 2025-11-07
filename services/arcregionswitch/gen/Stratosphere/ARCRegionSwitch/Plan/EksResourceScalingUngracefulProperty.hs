module Stratosphere.ARCRegionSwitch.Plan.EksResourceScalingUngracefulProperty (
        EksResourceScalingUngracefulProperty(..),
        mkEksResourceScalingUngracefulProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksResourceScalingUngracefulProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingungraceful.html>
    EksResourceScalingUngracefulProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingungraceful.html#cfn-arcregionswitch-plan-eksresourcescalingungraceful-minimumsuccesspercentage>
                                          minimumSuccessPercentage :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksResourceScalingUngracefulProperty ::
  Value Prelude.Double -> EksResourceScalingUngracefulProperty
mkEksResourceScalingUngracefulProperty minimumSuccessPercentage
  = EksResourceScalingUngracefulProperty
      {haddock_workaround_ = (),
       minimumSuccessPercentage = minimumSuccessPercentage}
instance ToResourceProperties EksResourceScalingUngracefulProperty where
  toResourceProperties EksResourceScalingUngracefulProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.EksResourceScalingUngraceful",
         supportsTags = Prelude.False,
         properties = ["MinimumSuccessPercentage"
                         JSON..= minimumSuccessPercentage]}
instance JSON.ToJSON EksResourceScalingUngracefulProperty where
  toJSON EksResourceScalingUngracefulProperty {..}
    = JSON.object
        ["MinimumSuccessPercentage" JSON..= minimumSuccessPercentage]
instance Property "MinimumSuccessPercentage" EksResourceScalingUngracefulProperty where
  type PropertyType "MinimumSuccessPercentage" EksResourceScalingUngracefulProperty = Value Prelude.Double
  set newValue EksResourceScalingUngracefulProperty {..}
    = EksResourceScalingUngracefulProperty
        {minimumSuccessPercentage = newValue, ..}