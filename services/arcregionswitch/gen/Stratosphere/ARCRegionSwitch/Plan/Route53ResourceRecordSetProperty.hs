module Stratosphere.ARCRegionSwitch.Plan.Route53ResourceRecordSetProperty (
        Route53ResourceRecordSetProperty(..),
        mkRoute53ResourceRecordSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Route53ResourceRecordSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53resourcerecordset.html>
    Route53ResourceRecordSetProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53resourcerecordset.html#cfn-arcregionswitch-plan-route53resourcerecordset-recordsetidentifier>
                                      recordSetIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-route53resourcerecordset.html#cfn-arcregionswitch-plan-route53resourcerecordset-region>
                                      region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoute53ResourceRecordSetProperty ::
  Route53ResourceRecordSetProperty
mkRoute53ResourceRecordSetProperty
  = Route53ResourceRecordSetProperty
      {haddock_workaround_ = (), recordSetIdentifier = Prelude.Nothing,
       region = Prelude.Nothing}
instance ToResourceProperties Route53ResourceRecordSetProperty where
  toResourceProperties Route53ResourceRecordSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Route53ResourceRecordSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RecordSetIdentifier" Prelude.<$> recordSetIdentifier,
                            (JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON Route53ResourceRecordSetProperty where
  toJSON Route53ResourceRecordSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RecordSetIdentifier" Prelude.<$> recordSetIdentifier,
               (JSON..=) "Region" Prelude.<$> region]))
instance Property "RecordSetIdentifier" Route53ResourceRecordSetProperty where
  type PropertyType "RecordSetIdentifier" Route53ResourceRecordSetProperty = Value Prelude.Text
  set newValue Route53ResourceRecordSetProperty {..}
    = Route53ResourceRecordSetProperty
        {recordSetIdentifier = Prelude.pure newValue, ..}
instance Property "Region" Route53ResourceRecordSetProperty where
  type PropertyType "Region" Route53ResourceRecordSetProperty = Value Prelude.Text
  set newValue Route53ResourceRecordSetProperty {..}
    = Route53ResourceRecordSetProperty
        {region = Prelude.pure newValue, ..}