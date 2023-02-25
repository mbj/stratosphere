module Stratosphere.XRay.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = ResourcePolicy {bypassPolicyLockoutCheck :: (Prelude.Maybe (Value Prelude.Bool)),
                    policyDocument :: (Value Prelude.Text),
                    policyName :: (Value Prelude.Text)}
mkResourcePolicy ::
  Value Prelude.Text -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy policyDocument policyName
  = ResourcePolicy
      {policyDocument = policyDocument, policyName = policyName,
       bypassPolicyLockoutCheck = Prelude.Nothing}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::XRay::ResourcePolicy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyDocument" JSON..= policyDocument,
                            "PolicyName" JSON..= policyName]
                           (Prelude.catMaybes
                              [(JSON..=) "BypassPolicyLockoutCheck"
                                 Prelude.<$> bypassPolicyLockoutCheck]))}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyDocument" JSON..= policyDocument,
               "PolicyName" JSON..= policyName]
              (Prelude.catMaybes
                 [(JSON..=) "BypassPolicyLockoutCheck"
                    Prelude.<$> bypassPolicyLockoutCheck])))
instance Property "BypassPolicyLockoutCheck" ResourcePolicy where
  type PropertyType "BypassPolicyLockoutCheck" ResourcePolicy = Value Prelude.Bool
  set newValue ResourcePolicy {..}
    = ResourcePolicy
        {bypassPolicyLockoutCheck = Prelude.pure newValue, ..}
instance Property "PolicyDocument" ResourcePolicy where
  type PropertyType "PolicyDocument" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {policyDocument = newValue, ..}
instance Property "PolicyName" ResourcePolicy where
  type PropertyType "PolicyName" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {policyName = newValue, ..}