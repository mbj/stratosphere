module Stratosphere.Events.Rule.KinesisParametersProperty (
        KinesisParametersProperty(..), mkKinesisParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html>
    KinesisParametersProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html#cfn-events-rule-kinesisparameters-partitionkeypath>
                               partitionKeyPath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisParametersProperty ::
  Value Prelude.Text -> KinesisParametersProperty
mkKinesisParametersProperty partitionKeyPath
  = KinesisParametersProperty
      {haddock_workaround_ = (), partitionKeyPath = partitionKeyPath}
instance ToResourceProperties KinesisParametersProperty where
  toResourceProperties KinesisParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.KinesisParameters",
         supportsTags = Prelude.False,
         properties = ["PartitionKeyPath" JSON..= partitionKeyPath]}
instance JSON.ToJSON KinesisParametersProperty where
  toJSON KinesisParametersProperty {..}
    = JSON.object ["PartitionKeyPath" JSON..= partitionKeyPath]
instance Property "PartitionKeyPath" KinesisParametersProperty where
  type PropertyType "PartitionKeyPath" KinesisParametersProperty = Value Prelude.Text
  set newValue KinesisParametersProperty {..}
    = KinesisParametersProperty {partitionKeyPath = newValue, ..}