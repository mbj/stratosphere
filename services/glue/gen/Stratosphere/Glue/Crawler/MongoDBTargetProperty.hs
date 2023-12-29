module Stratosphere.Glue.Crawler.MongoDBTargetProperty (
        MongoDBTargetProperty(..), mkMongoDBTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MongoDBTargetProperty
  = MongoDBTargetProperty {connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                           path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMongoDBTargetProperty :: MongoDBTargetProperty
mkMongoDBTargetProperty
  = MongoDBTargetProperty
      {connectionName = Prelude.Nothing, path = Prelude.Nothing}
instance ToResourceProperties MongoDBTargetProperty where
  toResourceProperties MongoDBTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.MongoDBTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON MongoDBTargetProperty where
  toJSON MongoDBTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "Path" Prelude.<$> path]))
instance Property "ConnectionName" MongoDBTargetProperty where
  type PropertyType "ConnectionName" MongoDBTargetProperty = Value Prelude.Text
  set newValue MongoDBTargetProperty {..}
    = MongoDBTargetProperty
        {connectionName = Prelude.pure newValue, ..}
instance Property "Path" MongoDBTargetProperty where
  type PropertyType "Path" MongoDBTargetProperty = Value Prelude.Text
  set newValue MongoDBTargetProperty {..}
    = MongoDBTargetProperty {path = Prelude.pure newValue, ..}