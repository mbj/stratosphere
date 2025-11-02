module Stratosphere.IAM.GroupPolicy (
        GroupPolicy(..), mkGroupPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-grouppolicy.html>
    GroupPolicy {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-grouppolicy.html#cfn-iam-grouppolicy-groupname>
                 groupName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-grouppolicy.html#cfn-iam-grouppolicy-policydocument>
                 policyDocument :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-grouppolicy.html#cfn-iam-grouppolicy-policyname>
                 policyName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupPolicy ::
  Value Prelude.Text -> Value Prelude.Text -> GroupPolicy
mkGroupPolicy groupName policyName
  = GroupPolicy
      {haddock_workaround_ = (), groupName = groupName,
       policyName = policyName, policyDocument = Prelude.Nothing}
instance ToResourceProperties GroupPolicy where
  toResourceProperties GroupPolicy {..}
    = ResourceProperties
        {awsType = "AWS::IAM::GroupPolicy", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroupName" JSON..= groupName, "PolicyName" JSON..= policyName]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument]))}
instance JSON.ToJSON GroupPolicy where
  toJSON GroupPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroupName" JSON..= groupName, "PolicyName" JSON..= policyName]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument])))
instance Property "GroupName" GroupPolicy where
  type PropertyType "GroupName" GroupPolicy = Value Prelude.Text
  set newValue GroupPolicy {..}
    = GroupPolicy {groupName = newValue, ..}
instance Property "PolicyDocument" GroupPolicy where
  type PropertyType "PolicyDocument" GroupPolicy = JSON.Object
  set newValue GroupPolicy {..}
    = GroupPolicy {policyDocument = Prelude.pure newValue, ..}
instance Property "PolicyName" GroupPolicy where
  type PropertyType "PolicyName" GroupPolicy = Value Prelude.Text
  set newValue GroupPolicy {..}
    = GroupPolicy {policyName = newValue, ..}