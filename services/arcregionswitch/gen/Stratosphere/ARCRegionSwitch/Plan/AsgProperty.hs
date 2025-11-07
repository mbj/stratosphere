module Stratosphere.ARCRegionSwitch.Plan.AsgProperty (
        AsgProperty(..), mkAsgProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AsgProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-asg.html>
    AsgProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-asg.html#cfn-arcregionswitch-plan-asg-arn>
                 arn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-asg.html#cfn-arcregionswitch-plan-asg-crossaccountrole>
                 crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-asg.html#cfn-arcregionswitch-plan-asg-externalid>
                 externalId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAsgProperty :: AsgProperty
mkAsgProperty
  = AsgProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing}
instance ToResourceProperties AsgProperty where
  toResourceProperties AsgProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Asg",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                            (JSON..=) "ExternalId" Prelude.<$> externalId])}
instance JSON.ToJSON AsgProperty where
  toJSON AsgProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
               (JSON..=) "ExternalId" Prelude.<$> externalId]))
instance Property "Arn" AsgProperty where
  type PropertyType "Arn" AsgProperty = Value Prelude.Text
  set newValue AsgProperty {..}
    = AsgProperty {arn = Prelude.pure newValue, ..}
instance Property "CrossAccountRole" AsgProperty where
  type PropertyType "CrossAccountRole" AsgProperty = Value Prelude.Text
  set newValue AsgProperty {..}
    = AsgProperty {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" AsgProperty where
  type PropertyType "ExternalId" AsgProperty = Value Prelude.Text
  set newValue AsgProperty {..}
    = AsgProperty {externalId = Prelude.pure newValue, ..}