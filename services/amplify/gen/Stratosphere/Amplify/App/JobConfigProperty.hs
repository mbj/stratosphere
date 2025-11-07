module Stratosphere.Amplify.App.JobConfigProperty (
        JobConfigProperty(..), mkJobConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-jobconfig.html>
    JobConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-jobconfig.html#cfn-amplify-app-jobconfig-buildcomputetype>
                       buildComputeType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobConfigProperty :: Value Prelude.Text -> JobConfigProperty
mkJobConfigProperty buildComputeType
  = JobConfigProperty
      {haddock_workaround_ = (), buildComputeType = buildComputeType}
instance ToResourceProperties JobConfigProperty where
  toResourceProperties JobConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::App.JobConfig",
         supportsTags = Prelude.False,
         properties = ["BuildComputeType" JSON..= buildComputeType]}
instance JSON.ToJSON JobConfigProperty where
  toJSON JobConfigProperty {..}
    = JSON.object ["BuildComputeType" JSON..= buildComputeType]
instance Property "BuildComputeType" JobConfigProperty where
  type PropertyType "BuildComputeType" JobConfigProperty = Value Prelude.Text
  set newValue JobConfigProperty {..}
    = JobConfigProperty {buildComputeType = newValue, ..}