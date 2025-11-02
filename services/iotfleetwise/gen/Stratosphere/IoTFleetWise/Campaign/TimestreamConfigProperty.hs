module Stratosphere.IoTFleetWise.Campaign.TimestreamConfigProperty (
        TimestreamConfigProperty(..), mkTimestreamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestreamConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-timestreamconfig.html>
    TimestreamConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-timestreamconfig.html#cfn-iotfleetwise-campaign-timestreamconfig-executionrolearn>
                              executionRoleArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-timestreamconfig.html#cfn-iotfleetwise-campaign-timestreamconfig-timestreamtablearn>
                              timestreamTableArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestreamConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TimestreamConfigProperty
mkTimestreamConfigProperty executionRoleArn timestreamTableArn
  = TimestreamConfigProperty
      {haddock_workaround_ = (), executionRoleArn = executionRoleArn,
       timestreamTableArn = timestreamTableArn}
instance ToResourceProperties TimestreamConfigProperty where
  toResourceProperties TimestreamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.TimestreamConfig",
         supportsTags = Prelude.False,
         properties = ["ExecutionRoleArn" JSON..= executionRoleArn,
                       "TimestreamTableArn" JSON..= timestreamTableArn]}
instance JSON.ToJSON TimestreamConfigProperty where
  toJSON TimestreamConfigProperty {..}
    = JSON.object
        ["ExecutionRoleArn" JSON..= executionRoleArn,
         "TimestreamTableArn" JSON..= timestreamTableArn]
instance Property "ExecutionRoleArn" TimestreamConfigProperty where
  type PropertyType "ExecutionRoleArn" TimestreamConfigProperty = Value Prelude.Text
  set newValue TimestreamConfigProperty {..}
    = TimestreamConfigProperty {executionRoleArn = newValue, ..}
instance Property "TimestreamTableArn" TimestreamConfigProperty where
  type PropertyType "TimestreamTableArn" TimestreamConfigProperty = Value Prelude.Text
  set newValue TimestreamConfigProperty {..}
    = TimestreamConfigProperty {timestreamTableArn = newValue, ..}