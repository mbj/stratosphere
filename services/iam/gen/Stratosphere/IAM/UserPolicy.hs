module Stratosphere.IAM.UserPolicy (
        UserPolicy(..), mkUserPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPolicy
  = UserPolicy {policyDocument :: (Prelude.Maybe JSON.Object),
                policyName :: (Value Prelude.Text),
                userName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPolicy ::
  Value Prelude.Text -> Value Prelude.Text -> UserPolicy
mkUserPolicy policyName userName
  = UserPolicy
      {policyName = policyName, userName = userName,
       policyDocument = Prelude.Nothing}
instance ToResourceProperties UserPolicy where
  toResourceProperties UserPolicy {..}
    = ResourceProperties
        {awsType = "AWS::IAM::UserPolicy", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyName" JSON..= policyName, "UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument]))}
instance JSON.ToJSON UserPolicy where
  toJSON UserPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyName" JSON..= policyName, "UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyDocument" Prelude.<$> policyDocument])))
instance Property "PolicyDocument" UserPolicy where
  type PropertyType "PolicyDocument" UserPolicy = JSON.Object
  set newValue UserPolicy {..}
    = UserPolicy {policyDocument = Prelude.pure newValue, ..}
instance Property "PolicyName" UserPolicy where
  type PropertyType "PolicyName" UserPolicy = Value Prelude.Text
  set newValue UserPolicy {..}
    = UserPolicy {policyName = newValue, ..}
instance Property "UserName" UserPolicy where
  type PropertyType "UserName" UserPolicy = Value Prelude.Text
  set newValue UserPolicy {..} = UserPolicy {userName = newValue, ..}