module Stratosphere.Connect.InstanceStorageConfig.KinesisStreamConfigProperty (
        KinesisStreamConfigProperty(..), mkKinesisStreamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-kinesisstreamconfig.html>
    KinesisStreamConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-instancestorageconfig-kinesisstreamconfig.html#cfn-connect-instancestorageconfig-kinesisstreamconfig-streamarn>
                                 streamArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamConfigProperty ::
  Value Prelude.Text -> KinesisStreamConfigProperty
mkKinesisStreamConfigProperty streamArn
  = KinesisStreamConfigProperty
      {haddock_workaround_ = (), streamArn = streamArn}
instance ToResourceProperties KinesisStreamConfigProperty where
  toResourceProperties KinesisStreamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::InstanceStorageConfig.KinesisStreamConfig",
         supportsTags = Prelude.False,
         properties = ["StreamArn" JSON..= streamArn]}
instance JSON.ToJSON KinesisStreamConfigProperty where
  toJSON KinesisStreamConfigProperty {..}
    = JSON.object ["StreamArn" JSON..= streamArn]
instance Property "StreamArn" KinesisStreamConfigProperty where
  type PropertyType "StreamArn" KinesisStreamConfigProperty = Value Prelude.Text
  set newValue KinesisStreamConfigProperty {..}
    = KinesisStreamConfigProperty {streamArn = newValue, ..}