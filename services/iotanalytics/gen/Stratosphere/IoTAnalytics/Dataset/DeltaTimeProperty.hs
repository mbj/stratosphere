module Stratosphere.IoTAnalytics.Dataset.DeltaTimeProperty (
        DeltaTimeProperty(..), mkDeltaTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeltaTimeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html>
    DeltaTimeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-offsetseconds>
                       offsetSeconds :: (Value Prelude.Integer),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-timeexpression>
                       timeExpression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeltaTimeProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> DeltaTimeProperty
mkDeltaTimeProperty offsetSeconds timeExpression
  = DeltaTimeProperty
      {haddock_workaround_ = (), offsetSeconds = offsetSeconds,
       timeExpression = timeExpression}
instance ToResourceProperties DeltaTimeProperty where
  toResourceProperties DeltaTimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.DeltaTime",
         supportsTags = Prelude.False,
         properties = ["OffsetSeconds" JSON..= offsetSeconds,
                       "TimeExpression" JSON..= timeExpression]}
instance JSON.ToJSON DeltaTimeProperty where
  toJSON DeltaTimeProperty {..}
    = JSON.object
        ["OffsetSeconds" JSON..= offsetSeconds,
         "TimeExpression" JSON..= timeExpression]
instance Property "OffsetSeconds" DeltaTimeProperty where
  type PropertyType "OffsetSeconds" DeltaTimeProperty = Value Prelude.Integer
  set newValue DeltaTimeProperty {..}
    = DeltaTimeProperty {offsetSeconds = newValue, ..}
instance Property "TimeExpression" DeltaTimeProperty where
  type PropertyType "TimeExpression" DeltaTimeProperty = Value Prelude.Text
  set newValue DeltaTimeProperty {..}
    = DeltaTimeProperty {timeExpression = newValue, ..}