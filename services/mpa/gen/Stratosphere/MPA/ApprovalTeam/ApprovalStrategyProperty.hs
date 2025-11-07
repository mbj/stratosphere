module Stratosphere.MPA.ApprovalTeam.ApprovalStrategyProperty (
        module Exports, ApprovalStrategyProperty(..),
        mkApprovalStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MPA.ApprovalTeam.MofNApprovalStrategyProperty as Exports
import Stratosphere.ResourceProperties
data ApprovalStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approvalstrategy.html>
    ApprovalStrategyProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-approvalteam-approvalstrategy.html#cfn-mpa-approvalteam-approvalstrategy-mofn>
                              mofN :: MofNApprovalStrategyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApprovalStrategyProperty ::
  MofNApprovalStrategyProperty -> ApprovalStrategyProperty
mkApprovalStrategyProperty mofN
  = ApprovalStrategyProperty {haddock_workaround_ = (), mofN = mofN}
instance ToResourceProperties ApprovalStrategyProperty where
  toResourceProperties ApprovalStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::MPA::ApprovalTeam.ApprovalStrategy",
         supportsTags = Prelude.False, properties = ["MofN" JSON..= mofN]}
instance JSON.ToJSON ApprovalStrategyProperty where
  toJSON ApprovalStrategyProperty {..}
    = JSON.object ["MofN" JSON..= mofN]
instance Property "MofN" ApprovalStrategyProperty where
  type PropertyType "MofN" ApprovalStrategyProperty = MofNApprovalStrategyProperty
  set newValue ApprovalStrategyProperty {..}
    = ApprovalStrategyProperty {mofN = newValue, ..}