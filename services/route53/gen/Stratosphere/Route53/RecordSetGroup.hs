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
  = RecordSetGroup {comment :: (Prelude.Maybe (Value Prelude.Text)),
                    hostedZoneId :: (Prelude.Maybe (Value Prelude.Text)),
                    hostedZoneName :: (Prelude.Maybe (Value Prelude.Text)),
                    recordSets :: (Prelude.Maybe [RecordSetProperty])}
mkRecordSetGroup :: RecordSetGroup
mkRecordSetGroup
  = RecordSetGroup
      {comment = Prelude.Nothing, hostedZoneId = Prelude.Nothing,
       hostedZoneName = Prelude.Nothing, recordSets = Prelude.Nothing}
instance ToResourceProperties RecordSetGroup where
  toResourceProperties RecordSetGroup {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup",
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