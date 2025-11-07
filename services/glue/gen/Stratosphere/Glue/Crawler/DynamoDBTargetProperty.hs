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
                            path :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html#cfn-glue-crawler-dynamodbtarget-scanall>
                            scanAll :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html#cfn-glue-crawler-dynamodbtarget-scanrate>
                            scanRate :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamoDBTargetProperty :: DynamoDBTargetProperty
mkDynamoDBTargetProperty
  = DynamoDBTargetProperty
      {haddock_workaround_ = (), path = Prelude.Nothing,
       scanAll = Prelude.Nothing, scanRate = Prelude.Nothing}
instance ToResourceProperties DynamoDBTargetProperty where
  toResourceProperties DynamoDBTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.DynamoDBTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "ScanAll" Prelude.<$> scanAll,
                            (JSON..=) "ScanRate" Prelude.<$> scanRate])}
instance JSON.ToJSON DynamoDBTargetProperty where
  toJSON DynamoDBTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "ScanAll" Prelude.<$> scanAll,
               (JSON..=) "ScanRate" Prelude.<$> scanRate]))
instance Property "Path" DynamoDBTargetProperty where
  type PropertyType "Path" DynamoDBTargetProperty = Value Prelude.Text
  set newValue DynamoDBTargetProperty {..}
    = DynamoDBTargetProperty {path = Prelude.pure newValue, ..}
instance Property "ScanAll" DynamoDBTargetProperty where
  type PropertyType "ScanAll" DynamoDBTargetProperty = Value Prelude.Bool
  set newValue DynamoDBTargetProperty {..}
    = DynamoDBTargetProperty {scanAll = Prelude.pure newValue, ..}
instance Property "ScanRate" DynamoDBTargetProperty where
  type PropertyType "ScanRate" DynamoDBTargetProperty = Value Prelude.Double
  set newValue DynamoDBTargetProperty {..}
    = DynamoDBTargetProperty {scanRate = Prelude.pure newValue, ..}