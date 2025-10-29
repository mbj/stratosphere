module Stratosphere.Lex.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lex-resourcepolicy.html>
    ResourcePolicy {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lex-resourcepolicy.html#cfn-lex-resourcepolicy-policy>
                    policy :: JSON.Object,
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lex-resourcepolicy.html#cfn-lex-resourcepolicy-resourcearn>
                    resourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy ::
  JSON.Object -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy policy resourceArn
  = ResourcePolicy {policy = policy, resourceArn = resourceArn}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::Lex::ResourcePolicy",
         supportsTags = Prelude.False,
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