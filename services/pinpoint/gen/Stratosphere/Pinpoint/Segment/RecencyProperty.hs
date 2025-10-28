module Stratosphere.Pinpoint.Segment.RecencyProperty (
        RecencyProperty(..), mkRecencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html>
    RecencyProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-duration>
                     duration :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-recencytype>
                     recencyType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecencyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RecencyProperty
mkRecencyProperty duration recencyType
  = RecencyProperty
      {haddock_workaround_ = (), duration = duration,
       recencyType = recencyType}
instance ToResourceProperties RecencyProperty where
  toResourceProperties RecencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.Recency",
         supportsTags = Prelude.False,
         properties = ["Duration" JSON..= duration,
                       "RecencyType" JSON..= recencyType]}
instance JSON.ToJSON RecencyProperty where
  toJSON RecencyProperty {..}
    = JSON.object
        ["Duration" JSON..= duration, "RecencyType" JSON..= recencyType]
instance Property "Duration" RecencyProperty where
  type PropertyType "Duration" RecencyProperty = Value Prelude.Text
  set newValue RecencyProperty {..}
    = RecencyProperty {duration = newValue, ..}
instance Property "RecencyType" RecencyProperty where
  type PropertyType "RecencyType" RecencyProperty = Value Prelude.Text
  set newValue RecencyProperty {..}
    = RecencyProperty {recencyType = newValue, ..}