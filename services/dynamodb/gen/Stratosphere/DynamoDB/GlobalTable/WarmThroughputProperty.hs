module Stratosphere.DynamoDB.GlobalTable.WarmThroughputProperty (
        WarmThroughputProperty(..), mkWarmThroughputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WarmThroughputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-warmthroughput.html>
    WarmThroughputProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-warmthroughput.html#cfn-dynamodb-globaltable-warmthroughput-readunitspersecond>
                            readUnitsPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-warmthroughput.html#cfn-dynamodb-globaltable-warmthroughput-writeunitspersecond>
                            writeUnitsPerSecond :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWarmThroughputProperty :: WarmThroughputProperty
mkWarmThroughputProperty
  = WarmThroughputProperty
      {haddock_workaround_ = (), readUnitsPerSecond = Prelude.Nothing,
       writeUnitsPerSecond = Prelude.Nothing}
instance ToResourceProperties WarmThroughputProperty where
  toResourceProperties WarmThroughputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.WarmThroughput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReadUnitsPerSecond" Prelude.<$> readUnitsPerSecond,
                            (JSON..=) "WriteUnitsPerSecond" Prelude.<$> writeUnitsPerSecond])}
instance JSON.ToJSON WarmThroughputProperty where
  toJSON WarmThroughputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReadUnitsPerSecond" Prelude.<$> readUnitsPerSecond,
               (JSON..=) "WriteUnitsPerSecond" Prelude.<$> writeUnitsPerSecond]))
instance Property "ReadUnitsPerSecond" WarmThroughputProperty where
  type PropertyType "ReadUnitsPerSecond" WarmThroughputProperty = Value Prelude.Integer
  set newValue WarmThroughputProperty {..}
    = WarmThroughputProperty
        {readUnitsPerSecond = Prelude.pure newValue, ..}
instance Property "WriteUnitsPerSecond" WarmThroughputProperty where
  type PropertyType "WriteUnitsPerSecond" WarmThroughputProperty = Value Prelude.Integer
  set newValue WarmThroughputProperty {..}
    = WarmThroughputProperty
        {writeUnitsPerSecond = Prelude.pure newValue, ..}