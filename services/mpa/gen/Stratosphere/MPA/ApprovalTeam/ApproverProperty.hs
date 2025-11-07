module Stratosphere.MPA.ApprovalTeam.ApproverProperty (
        ApproverProperty(..), mkApproverProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApproverProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approver.html>
    ApproverProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approver.html#cfn-mpa-approvalteam-approver-approverid>
                      approverId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approver.html#cfn-mpa-approvalteam-approver-primaryidentityid>
                      primaryIdentityId :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approver.html#cfn-mpa-approvalteam-approver-primaryidentitysourcearn>
                      primaryIdentitySourceArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approver.html#cfn-mpa-approvalteam-approver-primaryidentitystatus>
                      primaryIdentityStatus :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approver.html#cfn-mpa-approvalteam-approver-responsetime>
                      responseTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApproverProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ApproverProperty
mkApproverProperty primaryIdentityId primaryIdentitySourceArn
  = ApproverProperty
      {haddock_workaround_ = (), primaryIdentityId = primaryIdentityId,
       primaryIdentitySourceArn = primaryIdentitySourceArn,
       approverId = Prelude.Nothing,
       primaryIdentityStatus = Prelude.Nothing,
       responseTime = Prelude.Nothing}
instance ToResourceProperties ApproverProperty where
  toResourceProperties ApproverProperty {..}
    = ResourceProperties
        {awsType = "AWS::MPA::ApprovalTeam.Approver",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PrimaryIdentityId" JSON..= primaryIdentityId,
                            "PrimaryIdentitySourceArn" JSON..= primaryIdentitySourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ApproverId" Prelude.<$> approverId,
                               (JSON..=) "PrimaryIdentityStatus"
                                 Prelude.<$> primaryIdentityStatus,
                               (JSON..=) "ResponseTime" Prelude.<$> responseTime]))}
instance JSON.ToJSON ApproverProperty where
  toJSON ApproverProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PrimaryIdentityId" JSON..= primaryIdentityId,
               "PrimaryIdentitySourceArn" JSON..= primaryIdentitySourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "ApproverId" Prelude.<$> approverId,
                  (JSON..=) "PrimaryIdentityStatus"
                    Prelude.<$> primaryIdentityStatus,
                  (JSON..=) "ResponseTime" Prelude.<$> responseTime])))
instance Property "ApproverId" ApproverProperty where
  type PropertyType "ApproverId" ApproverProperty = Value Prelude.Text
  set newValue ApproverProperty {..}
    = ApproverProperty {approverId = Prelude.pure newValue, ..}
instance Property "PrimaryIdentityId" ApproverProperty where
  type PropertyType "PrimaryIdentityId" ApproverProperty = Value Prelude.Text
  set newValue ApproverProperty {..}
    = ApproverProperty {primaryIdentityId = newValue, ..}
instance Property "PrimaryIdentitySourceArn" ApproverProperty where
  type PropertyType "PrimaryIdentitySourceArn" ApproverProperty = Value Prelude.Text
  set newValue ApproverProperty {..}
    = ApproverProperty {primaryIdentitySourceArn = newValue, ..}
instance Property "PrimaryIdentityStatus" ApproverProperty where
  type PropertyType "PrimaryIdentityStatus" ApproverProperty = Value Prelude.Text
  set newValue ApproverProperty {..}
    = ApproverProperty
        {primaryIdentityStatus = Prelude.pure newValue, ..}
instance Property "ResponseTime" ApproverProperty where
  type PropertyType "ResponseTime" ApproverProperty = Value Prelude.Text
  set newValue ApproverProperty {..}
    = ApproverProperty {responseTime = Prelude.pure newValue, ..}