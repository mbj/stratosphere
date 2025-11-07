module Stratosphere.ARCRegionSwitch.Plan.AssociatedAlarmProperty (
        AssociatedAlarmProperty(..), mkAssociatedAlarmProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssociatedAlarmProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-associatedalarm.html>
    AssociatedAlarmProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-associatedalarm.html#cfn-arcregionswitch-plan-associatedalarm-alarmtype>
                             alarmType :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-associatedalarm.html#cfn-arcregionswitch-plan-associatedalarm-crossaccountrole>
                             crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-associatedalarm.html#cfn-arcregionswitch-plan-associatedalarm-externalid>
                             externalId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-associatedalarm.html#cfn-arcregionswitch-plan-associatedalarm-resourceidentifier>
                             resourceIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociatedAlarmProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AssociatedAlarmProperty
mkAssociatedAlarmProperty alarmType resourceIdentifier
  = AssociatedAlarmProperty
      {haddock_workaround_ = (), alarmType = alarmType,
       resourceIdentifier = resourceIdentifier,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing}
instance ToResourceProperties AssociatedAlarmProperty where
  toResourceProperties AssociatedAlarmProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.AssociatedAlarm",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlarmType" JSON..= alarmType,
                            "ResourceIdentifier" JSON..= resourceIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                               (JSON..=) "ExternalId" Prelude.<$> externalId]))}
instance JSON.ToJSON AssociatedAlarmProperty where
  toJSON AssociatedAlarmProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlarmType" JSON..= alarmType,
               "ResourceIdentifier" JSON..= resourceIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                  (JSON..=) "ExternalId" Prelude.<$> externalId])))
instance Property "AlarmType" AssociatedAlarmProperty where
  type PropertyType "AlarmType" AssociatedAlarmProperty = Value Prelude.Text
  set newValue AssociatedAlarmProperty {..}
    = AssociatedAlarmProperty {alarmType = newValue, ..}
instance Property "CrossAccountRole" AssociatedAlarmProperty where
  type PropertyType "CrossAccountRole" AssociatedAlarmProperty = Value Prelude.Text
  set newValue AssociatedAlarmProperty {..}
    = AssociatedAlarmProperty
        {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" AssociatedAlarmProperty where
  type PropertyType "ExternalId" AssociatedAlarmProperty = Value Prelude.Text
  set newValue AssociatedAlarmProperty {..}
    = AssociatedAlarmProperty {externalId = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" AssociatedAlarmProperty where
  type PropertyType "ResourceIdentifier" AssociatedAlarmProperty = Value Prelude.Text
  set newValue AssociatedAlarmProperty {..}
    = AssociatedAlarmProperty {resourceIdentifier = newValue, ..}