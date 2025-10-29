module Stratosphere.GuardDuty.Master (
        Master(..), mkMaster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Master
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html>
    Master {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-detectorid>
            detectorId :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-invitationid>
            invitationId :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-masterid>
            masterId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaster :: Value Prelude.Text -> Value Prelude.Text -> Master
mkMaster detectorId masterId
  = Master
      {detectorId = detectorId, masterId = masterId,
       invitationId = Prelude.Nothing}
instance ToResourceProperties Master where
  toResourceProperties Master {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Master", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DetectorId" JSON..= detectorId, "MasterId" JSON..= masterId]
                           (Prelude.catMaybes
                              [(JSON..=) "InvitationId" Prelude.<$> invitationId]))}
instance JSON.ToJSON Master where
  toJSON Master {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DetectorId" JSON..= detectorId, "MasterId" JSON..= masterId]
              (Prelude.catMaybes
                 [(JSON..=) "InvitationId" Prelude.<$> invitationId])))
instance Property "DetectorId" Master where
  type PropertyType "DetectorId" Master = Value Prelude.Text
  set newValue Master {..} = Master {detectorId = newValue, ..}
instance Property "InvitationId" Master where
  type PropertyType "InvitationId" Master = Value Prelude.Text
  set newValue Master {..}
    = Master {invitationId = Prelude.pure newValue, ..}
instance Property "MasterId" Master where
  type PropertyType "MasterId" Master = Value Prelude.Text
  set newValue Master {..} = Master {masterId = newValue, ..}