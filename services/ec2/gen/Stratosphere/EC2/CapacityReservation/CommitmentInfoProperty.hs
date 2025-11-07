module Stratosphere.EC2.CapacityReservation.CommitmentInfoProperty (
        CommitmentInfoProperty(..), mkCommitmentInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CommitmentInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-commitmentinfo.html>
    CommitmentInfoProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-commitmentinfo.html#cfn-ec2-capacityreservation-commitmentinfo-commitmentenddate>
                            commitmentEndDate :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-commitmentinfo.html#cfn-ec2-capacityreservation-commitmentinfo-committedinstancecount>
                            committedInstanceCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommitmentInfoProperty :: CommitmentInfoProperty
mkCommitmentInfoProperty
  = CommitmentInfoProperty
      {haddock_workaround_ = (), commitmentEndDate = Prelude.Nothing,
       committedInstanceCount = Prelude.Nothing}
instance ToResourceProperties CommitmentInfoProperty where
  toResourceProperties CommitmentInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservation.CommitmentInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommitmentEndDate" Prelude.<$> commitmentEndDate,
                            (JSON..=) "CommittedInstanceCount"
                              Prelude.<$> committedInstanceCount])}
instance JSON.ToJSON CommitmentInfoProperty where
  toJSON CommitmentInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommitmentEndDate" Prelude.<$> commitmentEndDate,
               (JSON..=) "CommittedInstanceCount"
                 Prelude.<$> committedInstanceCount]))
instance Property "CommitmentEndDate" CommitmentInfoProperty where
  type PropertyType "CommitmentEndDate" CommitmentInfoProperty = Value Prelude.Text
  set newValue CommitmentInfoProperty {..}
    = CommitmentInfoProperty
        {commitmentEndDate = Prelude.pure newValue, ..}
instance Property "CommittedInstanceCount" CommitmentInfoProperty where
  type PropertyType "CommittedInstanceCount" CommitmentInfoProperty = Value Prelude.Integer
  set newValue CommitmentInfoProperty {..}
    = CommitmentInfoProperty
        {committedInstanceCount = Prelude.pure newValue, ..}