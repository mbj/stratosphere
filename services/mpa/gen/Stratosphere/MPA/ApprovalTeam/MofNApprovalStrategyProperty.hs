module Stratosphere.MPA.ApprovalTeam.MofNApprovalStrategyProperty (
        MofNApprovalStrategyProperty(..), mkMofNApprovalStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MofNApprovalStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-mofnapprovalstrategy.html>
    MofNApprovalStrategyProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-mofnapprovalstrategy.html#cfn-mpa-approvalteam-mofnapprovalstrategy-minapprovalsrequired>
                                  minApprovalsRequired :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMofNApprovalStrategyProperty ::
  Value Prelude.Integer -> MofNApprovalStrategyProperty
mkMofNApprovalStrategyProperty minApprovalsRequired
  = MofNApprovalStrategyProperty
      {haddock_workaround_ = (),
       minApprovalsRequired = minApprovalsRequired}
instance ToResourceProperties MofNApprovalStrategyProperty where
  toResourceProperties MofNApprovalStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::MPA::ApprovalTeam.MofNApprovalStrategy",
         supportsTags = Prelude.False,
         properties = ["MinApprovalsRequired" JSON..= minApprovalsRequired]}
instance JSON.ToJSON MofNApprovalStrategyProperty where
  toJSON MofNApprovalStrategyProperty {..}
    = JSON.object ["MinApprovalsRequired" JSON..= minApprovalsRequired]
instance Property "MinApprovalsRequired" MofNApprovalStrategyProperty where
  type PropertyType "MinApprovalsRequired" MofNApprovalStrategyProperty = Value Prelude.Integer
  set newValue MofNApprovalStrategyProperty {..}
    = MofNApprovalStrategyProperty
        {minApprovalsRequired = newValue, ..}