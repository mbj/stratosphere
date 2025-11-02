module Stratosphere.Glue.Crawler.DynamoDBTargetProperty (
        DynamoDBTargetProperty(..), mkDynamoDBTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDBTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html>
    DynamoDBTargetProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html#cfn-glue-crawler-dynamodbtarget-path>
                            path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamoDBTargetProperty :: DynamoDBTargetProperty
mkDynamoDBTargetProperty
  = DynamoDBTargetProperty
      {haddock_workaround_ = (), path = Prelude.Nothing}
instance ToResourceProperties DynamoDBTargetProperty where
  toResourceProperties DynamoDBTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.DynamoDBTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON DynamoDBTargetProperty where
  toJSON DynamoDBTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path]))
instance Property "Path" DynamoDBTargetProperty where
  type PropertyType "Path" DynamoDBTargetProperty = Value Prelude.Text
  set newValue DynamoDBTargetProperty {..}
    = DynamoDBTargetProperty {path = Prelude.pure newValue, ..}