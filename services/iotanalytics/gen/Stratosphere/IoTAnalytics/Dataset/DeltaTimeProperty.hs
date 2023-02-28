module Stratosphere.IoTAnalytics.Dataset.DeltaTimeProperty (
        DeltaTimeProperty(..), mkDeltaTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeltaTimeProperty
  = DeltaTimeProperty {offsetSeconds :: (Value Prelude.Integer),
                       timeExpression :: (Value Prelude.Text)}
mkDeltaTimeProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> DeltaTimeProperty
mkDeltaTimeProperty offsetSeconds timeExpression
  = DeltaTimeProperty
      {offsetSeconds = offsetSeconds, timeExpression = timeExpression}
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