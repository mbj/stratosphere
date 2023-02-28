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
  = Group {groupName :: (Prelude.Maybe (Value Prelude.Text)),
           managedPolicyArns :: (Prelude.Maybe (ValueList Prelude.Text)),
           path :: (Prelude.Maybe (Value Prelude.Text)),
           policies :: (Prelude.Maybe [PolicyProperty])}
mkGroup :: Group
mkGroup
  = Group
      {groupName = Prelude.Nothing, managedPolicyArns = Prelude.Nothing,
       path = Prelude.Nothing, policies = Prelude.Nothing}
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