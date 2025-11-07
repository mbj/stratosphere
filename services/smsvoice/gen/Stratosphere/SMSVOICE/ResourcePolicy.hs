module Stratosphere.SMSVOICE.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-resourcepolicy.html>
    ResourcePolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-resourcepolicy.html#cfn-smsvoice-resourcepolicy-policydocument>
                    policyDocument :: JSON.Object,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-resourcepolicy.html#cfn-smsvoice-resourcepolicy-resourcearn>
                    resourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy ::
  JSON.Object -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy policyDocument resourceArn
  = ResourcePolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       resourceArn = resourceArn}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ResourcePolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "ResourceArn" JSON..= resourceArn]}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument,
         "ResourceArn" JSON..= resourceArn]
instance Property "PolicyDocument" ResourcePolicy where
  type PropertyType "PolicyDocument" ResourcePolicy = JSON.Object
  set newValue ResourcePolicy {..}
    = ResourcePolicy {policyDocument = newValue, ..}
instance Property "ResourceArn" ResourcePolicy where
  type PropertyType "ResourceArn" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {resourceArn = newValue, ..}