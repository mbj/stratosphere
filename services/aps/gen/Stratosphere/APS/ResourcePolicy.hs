module Stratosphere.APS.ResourcePolicy (
        ResourcePolicy(..), mkResourcePolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-resourcepolicy.html>
    ResourcePolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-resourcepolicy.html#cfn-aps-resourcepolicy-policydocument>
                    policyDocument :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-resourcepolicy.html#cfn-aps-resourcepolicy-workspacearn>
                    workspaceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicy ::
  Value Prelude.Text -> Value Prelude.Text -> ResourcePolicy
mkResourcePolicy policyDocument workspaceArn
  = ResourcePolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       workspaceArn = workspaceArn}
instance ToResourceProperties ResourcePolicy where
  toResourceProperties ResourcePolicy {..}
    = ResourceProperties
        {awsType = "AWS::APS::ResourcePolicy",
         supportsTags = Prelude.False,
         properties = ["PolicyDocument" JSON..= policyDocument,
                       "WorkspaceArn" JSON..= workspaceArn]}
instance JSON.ToJSON ResourcePolicy where
  toJSON ResourcePolicy {..}
    = JSON.object
        ["PolicyDocument" JSON..= policyDocument,
         "WorkspaceArn" JSON..= workspaceArn]
instance Property "PolicyDocument" ResourcePolicy where
  type PropertyType "PolicyDocument" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {policyDocument = newValue, ..}
instance Property "WorkspaceArn" ResourcePolicy where
  type PropertyType "WorkspaceArn" ResourcePolicy = Value Prelude.Text
  set newValue ResourcePolicy {..}
    = ResourcePolicy {workspaceArn = newValue, ..}