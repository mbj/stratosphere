module Stratosphere.Route53.RecordSetGroup (
        module Exports, RecordSetGroup(..), mkRecordSetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.RecordSetGroup.RecordSetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordSetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html>
    RecordSetGroup {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-comment>
                    comment :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-hostedzoneid>
                    hostedZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-hostedzonename>
                    hostedZoneName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-recordsets>
                    recordSets :: (Prelude.Maybe [RecordSetProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordSetGroup :: RecordSetGroup
mkRecordSetGroup
  = RecordSetGroup
      {haddock_workaround_ = (), comment = Prelude.Nothing,
       hostedZoneId = Prelude.Nothing, hostedZoneName = Prelude.Nothing,
       recordSets = Prelude.Nothing}
instance ToResourceProperties RecordSetGroup where
  toResourceProperties RecordSetGroup {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Comment" Prelude.<$> comment,
                            (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
                            (JSON..=) "HostedZoneName" Prelude.<$> hostedZoneName,
                            (JSON..=) "RecordSets" Prelude.<$> recordSets])}
instance JSON.ToJSON RecordSetGroup where
  toJSON RecordSetGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Comment" Prelude.<$> comment,
               (JSON..=) "HostedZoneId" Prelude.<$> hostedZoneId,
               (JSON..=) "HostedZoneName" Prelude.<$> hostedZoneName,
               (JSON..=) "RecordSets" Prelude.<$> recordSets]))
instance Property "Comment" RecordSetGroup where
  type PropertyType "Comment" RecordSetGroup = Value Prelude.Text
  set newValue RecordSetGroup {..}
    = RecordSetGroup {comment = Prelude.pure newValue, ..}
instance Property "HostedZoneId" RecordSetGroup where
  type PropertyType "HostedZoneId" RecordSetGroup = Value Prelude.Text
  set newValue RecordSetGroup {..}
    = RecordSetGroup {hostedZoneId = Prelude.pure newValue, ..}
instance Property "HostedZoneName" RecordSetGroup where
  type PropertyType "HostedZoneName" RecordSetGroup = Value Prelude.Text
  set newValue RecordSetGroup {..}
    = RecordSetGroup {hostedZoneName = Prelude.pure newValue, ..}
instance Property "RecordSets" RecordSetGroup where
  type PropertyType "RecordSets" RecordSetGroup = [RecordSetProperty]
  set newValue RecordSetGroup {..}
    = RecordSetGroup {recordSets = Prelude.pure newValue, ..}