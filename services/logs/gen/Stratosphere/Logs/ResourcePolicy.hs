module Stratosphere.Logs.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = ResourcePolicy {policyDocument :: (Value Prelude.Text),
                    policyName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy ::
  Value Prelude.Text -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy policyDocument policyName
  = ResourcePolicy
      {policyDocument = policyDocument, policyName = policyName}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::Logs::ResourcePolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "PolicyName" JSON..= policyName]}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument,
         "PolicyName" JSON..= policyName]
instance Property "PolicyDocument" ResourcePolicy where
  type PropertyType "PolicyDocument" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {policyDocument = newValue, ..}
instance Property "PolicyName" ResourcePolicy where
  type PropertyType "PolicyName" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {policyName = newValue, ..}