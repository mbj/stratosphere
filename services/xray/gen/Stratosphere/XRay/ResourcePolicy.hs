module Stratosphere.XRay.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-resourcepolicy.html>
    ResourcePolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-resourcepolicy.html#cfn-xray-resourcepolicy-bypasspolicylockoutcheck>
                    bypassPolicyLockoutCheck :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-resourcepolicy.html#cfn-xray-resourcepolicy-policydocument>
                    policyDocument :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-resourcepolicy.html#cfn-xray-resourcepolicy-policyname>
                    policyName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy ::
  Value Prelude.Text -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy policyDocument policyName
  = ResourcePolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       policyName = policyName,
       bypassPolicyLockoutCheck = Prelude.Nothing}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::XRay::ResourcePolicy",
         supportsTags = Prelude.False,
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