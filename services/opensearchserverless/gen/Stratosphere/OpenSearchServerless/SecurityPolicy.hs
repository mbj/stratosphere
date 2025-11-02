module Stratosphere.OpenSearchServerless.SecurityPolicy (
        SecurityPolicy(..), mkSecurityPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securitypolicy.html>
    SecurityPolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securitypolicy.html#cfn-opensearchserverless-securitypolicy-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securitypolicy.html#cfn-opensearchserverless-securitypolicy-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securitypolicy.html#cfn-opensearchserverless-securitypolicy-policy>
                    policy :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-securitypolicy.html#cfn-opensearchserverless-securitypolicy-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityPolicy ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SecurityPolicy
mkSecurityPolicy name policy type'
  = SecurityPolicy
      {haddock_workaround_ = (), name = name, policy = policy,
       type' = type', description = Prelude.Nothing}
instance ToResourceProperties SecurityPolicy where
  toResourceProperties SecurityPolicy {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::SecurityPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Policy" JSON..= policy,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON SecurityPolicy where
  toJSON SecurityPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Policy" JSON..= policy,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" SecurityPolicy where
  type PropertyType "Description" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {description = Prelude.pure newValue, ..}
instance Property "Name" SecurityPolicy where
  type PropertyType "Name" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {name = newValue, ..}
instance Property "Policy" SecurityPolicy where
  type PropertyType "Policy" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {policy = newValue, ..}
instance Property "Type" SecurityPolicy where
  type PropertyType "Type" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {type' = newValue, ..}