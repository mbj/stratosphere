module Stratosphere.Glue.Crawler.DynamoDBTargetProperty (
        DynamoDBTargetProperty(..), mkDynamoDBTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDBTargetProperty
  = DynamoDBTargetProperty {path :: (Prelude.Maybe (Value Prelude.Text))}
mkDynamoDBTargetProperty :: DynamoDBTargetProperty
mkDynamoDBTargetProperty
  = DynamoDBTargetProperty {path = Prelude.Nothing}
instance ToResourceProperties DynamoDBTargetProperty where
  toResourceProperties DynamoDBTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.DynamoDBTarget",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON DynamoDBTargetProperty where
  toJSON DynamoDBTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path]))
instance Property "Path" DynamoDBTargetProperty where
  type PropertyType "Path" DynamoDBTargetProperty = Value Prelude.Text
  set newValue DynamoDBTargetProperty {}
    = DynamoDBTargetProperty {path = Prelude.pure newValue, ..}