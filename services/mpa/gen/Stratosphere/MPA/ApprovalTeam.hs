module Stratosphere.MPA.ApprovalTeam (
        module Exports, ApprovalTeam(..), mkApprovalTeam
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MPA.ApprovalTeam.ApprovalStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.MPA.ApprovalTeam.ApproverProperty as Exports
import {-# SOURCE #-} Stratosphere.MPA.ApprovalTeam.PolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ApprovalTeam
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-approvalteam.html>
    ApprovalTeam {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-approvalteam.html#cfn-mpa-approvalteam-approvalstrategy>
                  approvalStrategy :: ApprovalStrategyProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-approvalteam.html#cfn-mpa-approvalteam-approvers>
                  approvers :: [ApproverProperty],
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-approvalteam.html#cfn-mpa-approvalteam-description>
                  description :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-approvalteam.html#cfn-mpa-approvalteam-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-approvalteam.html#cfn-mpa-approvalteam-policies>
                  policies :: [PolicyProperty],
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mpa-approvalteam.html#cfn-mpa-approvalteam-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApprovalTeam ::
  ApprovalStrategyProperty
  -> [ApproverProperty]
     -> Value Prelude.Text
        -> Value Prelude.Text -> [PolicyProperty] -> ApprovalTeam
mkApprovalTeam approvalStrategy approvers description name policies
  = ApprovalTeam
      {haddock_workaround_ = (), approvalStrategy = approvalStrategy,
       approvers = approvers, description = description, name = name,
       policies = policies, tags = Prelude.Nothing}
instance ToResourceProperties ApprovalTeam where
  toResourceProperties ApprovalTeam {..}
    = ResourceProperties
        {awsType = "AWS::MPA::ApprovalTeam", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApprovalStrategy" JSON..= approvalStrategy,
                            "Approvers" JSON..= approvers, "Description" JSON..= description,
                            "Name" JSON..= name, "Policies" JSON..= policies]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ApprovalTeam where
  toJSON ApprovalTeam {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApprovalStrategy" JSON..= approvalStrategy,
               "Approvers" JSON..= approvers, "Description" JSON..= description,
               "Name" JSON..= name, "Policies" JSON..= policies]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApprovalStrategy" ApprovalTeam where
  type PropertyType "ApprovalStrategy" ApprovalTeam = ApprovalStrategyProperty
  set newValue ApprovalTeam {..}
    = ApprovalTeam {approvalStrategy = newValue, ..}
instance Property "Approvers" ApprovalTeam where
  type PropertyType "Approvers" ApprovalTeam = [ApproverProperty]
  set newValue ApprovalTeam {..}
    = ApprovalTeam {approvers = newValue, ..}
instance Property "Description" ApprovalTeam where
  type PropertyType "Description" ApprovalTeam = Value Prelude.Text
  set newValue ApprovalTeam {..}
    = ApprovalTeam {description = newValue, ..}
instance Property "Name" ApprovalTeam where
  type PropertyType "Name" ApprovalTeam = Value Prelude.Text
  set newValue ApprovalTeam {..} = ApprovalTeam {name = newValue, ..}
instance Property "Policies" ApprovalTeam where
  type PropertyType "Policies" ApprovalTeam = [PolicyProperty]
  set newValue ApprovalTeam {..}
    = ApprovalTeam {policies = newValue, ..}
instance Property "Tags" ApprovalTeam where
  type PropertyType "Tags" ApprovalTeam = [Tag]
  set newValue ApprovalTeam {..}
    = ApprovalTeam {tags = Prelude.pure newValue, ..}