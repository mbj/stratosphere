module Stratosphere.CodeBuild.Project.PullRequestBuildPolicyProperty (
        PullRequestBuildPolicyProperty(..),
        mkPullRequestBuildPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PullRequestBuildPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-pullrequestbuildpolicy.html>
    PullRequestBuildPolicyProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-pullrequestbuildpolicy.html#cfn-codebuild-project-pullrequestbuildpolicy-approverroles>
                                    approverRoles :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-pullrequestbuildpolicy.html#cfn-codebuild-project-pullrequestbuildpolicy-requirescommentapproval>
                                    requiresCommentApproval :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPullRequestBuildPolicyProperty ::
  Value Prelude.Text -> PullRequestBuildPolicyProperty
mkPullRequestBuildPolicyProperty requiresCommentApproval
  = PullRequestBuildPolicyProperty
      {haddock_workaround_ = (),
       requiresCommentApproval = requiresCommentApproval,
       approverRoles = Prelude.Nothing}
instance ToResourceProperties PullRequestBuildPolicyProperty where
  toResourceProperties PullRequestBuildPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.PullRequestBuildPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RequiresCommentApproval" JSON..= requiresCommentApproval]
                           (Prelude.catMaybes
                              [(JSON..=) "ApproverRoles" Prelude.<$> approverRoles]))}
instance JSON.ToJSON PullRequestBuildPolicyProperty where
  toJSON PullRequestBuildPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RequiresCommentApproval" JSON..= requiresCommentApproval]
              (Prelude.catMaybes
                 [(JSON..=) "ApproverRoles" Prelude.<$> approverRoles])))
instance Property "ApproverRoles" PullRequestBuildPolicyProperty where
  type PropertyType "ApproverRoles" PullRequestBuildPolicyProperty = ValueList Prelude.Text
  set newValue PullRequestBuildPolicyProperty {..}
    = PullRequestBuildPolicyProperty
        {approverRoles = Prelude.pure newValue, ..}
instance Property "RequiresCommentApproval" PullRequestBuildPolicyProperty where
  type PropertyType "RequiresCommentApproval" PullRequestBuildPolicyProperty = Value Prelude.Text
  set newValue PullRequestBuildPolicyProperty {..}
    = PullRequestBuildPolicyProperty
        {requiresCommentApproval = newValue, ..}