module Stratosphere.AppConfig.Deployment.TagsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TagsProperty :: Prelude.Type
instance ToResourceProperties TagsProperty
instance Prelude.Eq TagsProperty
instance Prelude.Show TagsProperty
instance JSON.ToJSON TagsProperty