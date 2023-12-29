module Stratosphere.Glue.Crawler.MongoDBTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MongoDBTargetProperty :: Prelude.Type
instance ToResourceProperties MongoDBTargetProperty
instance Prelude.Eq MongoDBTargetProperty
instance Prelude.Show MongoDBTargetProperty
instance JSON.ToJSON MongoDBTargetProperty