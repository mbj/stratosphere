module Stratosphere.IAM.Policy (
        Policy(..), mkPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Policy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html>
    Policy {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-groups>
            groups :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policydocument>
            policyDocument :: JSON.Object,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policyname>
            policyName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-roles>
            roles :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-users>
            users :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicy :: JSON.Object -> Value Prelude.Text -> Policy
mkPolicy policyDocument policyName
  = Policy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       policyName = policyName, groups = Prelude.Nothing,
       roles = Prelude.Nothing, users = Prelude.Nothing}
instance ToResourceProperties Policy where
  toResourceProperties Policy {..}
    = ResourceProperties
        {awsType = "AWS::IAM::Policy", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyDocument" JSON..= policyDocument,
                            "PolicyName" JSON..= policyName]
                           (Prelude.catMaybes
                              [(JSON..=) "Groups" Prelude.<$> groups,
                               (JSON..=) "Roles" Prelude.<$> roles,
                               (JSON..=) "Users" Prelude.<$> users]))}
instance JSON.ToJSON Policy where
  toJSON Policy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyDocument" JSON..= policyDocument,
               "PolicyName" JSON..= policyName]
              (Prelude.catMaybes
                 [(JSON..=) "Groups" Prelude.<$> groups,
                  (JSON..=) "Roles" Prelude.<$> roles,
                  (JSON..=) "Users" Prelude.<$> users])))
instance Property "Groups" Policy where
  type PropertyType "Groups" Policy = ValueList Prelude.Text
  set newValue Policy {..}
    = Policy {groups = Prelude.pure newValue, ..}
instance Property "PolicyDocument" Policy where
  type PropertyType "PolicyDocument" Policy = JSON.Object
  set newValue Policy {..} = Policy {policyDocument = newValue, ..}
instance Property "PolicyName" Policy where
  type PropertyType "PolicyName" Policy = Value Prelude.Text
  set newValue Policy {..} = Policy {policyName = newValue, ..}
instance Property "Roles" Policy where
  type PropertyType "Roles" Policy = ValueList Prelude.Text
  set newValue Policy {..}
    = Policy {roles = Prelude.pure newValue, ..}
instance Property "Users" Policy where
  type PropertyType "Users" Policy = ValueList Prelude.Text
  set newValue Policy {..}
    = Policy {users = Prelude.pure newValue, ..}