module Stratosphere.IAM.RolePolicy (
        RolePolicy(..), mkRolePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RolePolicy
  = RolePolicy {policyDocument :: (Prelude.Maybe JSON.Object),
                policyName :: (Value Prelude.Text),
                roleName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRolePolicy ::
  Value Prelude.Text -> Value Prelude.Text -> RolePolicy
mkRolePolicy policyName roleName
  = RolePolicy
      {policyName = policyName, roleName = roleName,
       policyDocument = Prelude.Nothing}
instance ToResourceProperties RolePolicy where
  toResourceProperties RolePolicy {..}
    = ResourceProperties
        {awsType = "AWS::IAM::RolePolicy", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyName" JSON..= policyName, "RoleName" JSON..= roleName]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument]))}
instance JSON.ToJSON RolePolicy where
  toJSON RolePolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyName" JSON..= policyName, "RoleName" JSON..= roleName]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument])))
instance Property "PolicyDocument" RolePolicy where
  type PropertyType "PolicyDocument" RolePolicy = JSON.Object
  set newValue RolePolicy {..}
    = RolePolicy {policyDocument = Prelude.pure newValue, ..}
instance Property "PolicyName" RolePolicy where
  type PropertyType "PolicyName" RolePolicy = Value Prelude.Text
  set newValue RolePolicy {..}
    = RolePolicy {policyName = newValue, ..}
instance Property "RoleName" RolePolicy where
  type PropertyType "RoleName" RolePolicy = Value Prelude.Text
  set newValue RolePolicy {..} = RolePolicy {roleName = newValue, ..}