module Stratosphere.Pinpoint.Segment.RecencyProperty (
        RecencyProperty(..), mkRecencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecencyProperty
  = RecencyProperty {duration :: (Value Prelude.Text),
                     recencyType :: (Value Prelude.Text)}
mkRecencyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RecencyProperty
mkRecencyProperty duration recencyType
  = RecencyProperty {duration = duration, recencyType = recencyType}
instance ToResourceProperties RecencyProperty where
  toResourceProperties RecencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.Recency",
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