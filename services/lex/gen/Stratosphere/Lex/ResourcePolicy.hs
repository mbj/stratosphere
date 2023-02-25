module Stratosphere.Lex.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = ResourcePolicy {policy :: JSON.Object,
                    resourceArn :: (Value Prelude.Text)}
mkResourcePolicy ::
  JSON.Object -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy policy resourceArn
  = ResourcePolicy {policy = policy, resourceArn = resourceArn}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::Lex::ResourcePolicy",
         properties = ["Policy" JSON..= policy,
                       "ResourceArn" JSON..= resourceArn]}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        ["Policy" JSON..= policy, "ResourceArn" JSON..= resourceArn]
instance Property "Policy" ResourcePolicy where
  type PropertyType "Policy" ResourcePolicy = JSON.Object
  set newValue ResourcePolicy {..}
    = ResourcePolicy {policy = newValue, ..}
instance Property "ResourceArn" ResourcePolicy where
  type PropertyType "ResourceArn" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {resourceArn = newValue, ..}