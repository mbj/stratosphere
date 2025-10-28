module Stratosphere.IAM.Group (
        module Exports, Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IAM.Group.PolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Group
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-group.html>
    Group {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-group.html#cfn-iam-group-groupname>
           groupName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-group.html#cfn-iam-group-managedpolicyarns>
           managedPolicyArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-group.html#cfn-iam-group-path>
           path :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-group.html#cfn-iam-group-policies>
           policies :: (Prelude.Maybe [PolicyProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroup :: Group
mkGroup
  = Group
      {haddock_workaround_ = (), groupName = Prelude.Nothing,
       managedPolicyArns = Prelude.Nothing, path = Prelude.Nothing,
       policies = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::IAM::Group", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupName" Prelude.<$> groupName,
                            (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "Policies" Prelude.<$> policies])}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupName" Prelude.<$> groupName,
               (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "Policies" Prelude.<$> policies]))
instance Property "GroupName" Group where
  type PropertyType "GroupName" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {groupName = Prelude.pure newValue, ..}
instance Property "ManagedPolicyArns" Group where
  type PropertyType "ManagedPolicyArns" Group = ValueList Prelude.Text
  set newValue Group {..}
    = Group {managedPolicyArns = Prelude.pure newValue, ..}
instance Property "Path" Group where
  type PropertyType "Path" Group = Value Prelude.Text
  set newValue Group {..} = Group {path = Prelude.pure newValue, ..}
instance Property "Policies" Group where
  type PropertyType "Policies" Group = [PolicyProperty]
  set newValue Group {..}
    = Group {policies = Prelude.pure newValue, ..}