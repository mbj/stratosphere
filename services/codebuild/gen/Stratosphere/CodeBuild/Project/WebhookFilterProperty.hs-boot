module Stratosphere.CodeBuild.Project.WebhookFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WebhookFilterProperty :: Prelude.Type
instance ToResourceProperties WebhookFilterProperty
instance JSON.ToJSON WebhookFilterProperty