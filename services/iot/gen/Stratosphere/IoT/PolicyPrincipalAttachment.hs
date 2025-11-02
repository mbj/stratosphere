module Stratosphere.IoT.PolicyPrincipalAttachment (
        PolicyPrincipalAttachment(..), mkPolicyPrincipalAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyPrincipalAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html>
    PolicyPrincipalAttachment {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-policyname>
                               policyName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policyprincipalattachment.html#cfn-iot-policyprincipalattachment-principal>
                               principal :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyPrincipalAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> PolicyPrincipalAttachment
mkPolicyPrincipalAttachment policyName principal
  = PolicyPrincipalAttachment
      {haddock_workaround_ = (), policyName = policyName,
       principal = principal}
instance ToResourceProperties PolicyPrincipalAttachment where
  toResourceProperties PolicyPrincipalAttachment {..}
    = ResourceProperties
        {awsType = "AWS::IoT::PolicyPrincipalAttachment",
         supportsTags = Prelude.False,
         properties = ["PolicyName" JSON..= policyName,
                       "Principal" JSON..= principal]}
instance JSON.ToJSON PolicyPrincipalAttachment where
  toJSON PolicyPrincipalAttachment {..}
    = JSON.object
        ["PolicyName" JSON..= policyName, "Principal" JSON..= principal]
instance Property "PolicyName" PolicyPrincipalAttachment where
  type PropertyType "PolicyName" PolicyPrincipalAttachment = Value Prelude.Text
  set newValue PolicyPrincipalAttachment {..}
    = PolicyPrincipalAttachment {policyName = newValue, ..}
instance Property "Principal" PolicyPrincipalAttachment where
  type PropertyType "Principal" PolicyPrincipalAttachment = Value Prelude.Text
  set newValue PolicyPrincipalAttachment {..}
    = PolicyPrincipalAttachment {principal = newValue, ..}