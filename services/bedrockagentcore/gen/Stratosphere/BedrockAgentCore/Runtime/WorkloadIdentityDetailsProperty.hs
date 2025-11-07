module Stratosphere.BedrockAgentCore.Runtime.WorkloadIdentityDetailsProperty (
        WorkloadIdentityDetailsProperty(..),
        mkWorkloadIdentityDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkloadIdentityDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-workloadidentitydetails.html>
    WorkloadIdentityDetailsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-workloadidentitydetails.html#cfn-bedrockagentcore-runtime-workloadidentitydetails-workloadidentityarn>
                                     workloadIdentityArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkloadIdentityDetailsProperty ::
  Value Prelude.Text -> WorkloadIdentityDetailsProperty
mkWorkloadIdentityDetailsProperty workloadIdentityArn
  = WorkloadIdentityDetailsProperty
      {haddock_workaround_ = (),
       workloadIdentityArn = workloadIdentityArn}
instance ToResourceProperties WorkloadIdentityDetailsProperty where
  toResourceProperties WorkloadIdentityDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Runtime.WorkloadIdentityDetails",
         supportsTags = Prelude.False,
         properties = ["WorkloadIdentityArn" JSON..= workloadIdentityArn]}
instance JSON.ToJSON WorkloadIdentityDetailsProperty where
  toJSON WorkloadIdentityDetailsProperty {..}
    = JSON.object ["WorkloadIdentityArn" JSON..= workloadIdentityArn]
instance Property "WorkloadIdentityArn" WorkloadIdentityDetailsProperty where
  type PropertyType "WorkloadIdentityArn" WorkloadIdentityDetailsProperty = Value Prelude.Text
  set newValue WorkloadIdentityDetailsProperty {..}
    = WorkloadIdentityDetailsProperty
        {workloadIdentityArn = newValue, ..}