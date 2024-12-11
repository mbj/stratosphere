module Stratosphere.SageMaker.Model.HubAccessConfigProperty (
        HubAccessConfigProperty(..), mkHubAccessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HubAccessConfigProperty
  = HubAccessConfigProperty {hubContentArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHubAccessConfigProperty ::
  Value Prelude.Text -> HubAccessConfigProperty
mkHubAccessConfigProperty hubContentArn
  = HubAccessConfigProperty {hubContentArn = hubContentArn}
instance ToResourceProperties HubAccessConfigProperty where
  toResourceProperties HubAccessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.HubAccessConfig",
         supportsTags = Prelude.False,
         properties = ["HubContentArn" JSON..= hubContentArn]}
instance JSON.ToJSON HubAccessConfigProperty where
  toJSON HubAccessConfigProperty {..}
    = JSON.object ["HubContentArn" JSON..= hubContentArn]
instance Property "HubContentArn" HubAccessConfigProperty where
  type PropertyType "HubContentArn" HubAccessConfigProperty = Value Prelude.Text
  set newValue HubAccessConfigProperty {}
    = HubAccessConfigProperty {hubContentArn = newValue, ..}