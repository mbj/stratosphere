module Stratosphere.IoTSiteWise.AssetModel.TumblingWindowProperty (
        TumblingWindowProperty(..), mkTumblingWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TumblingWindowProperty
  = TumblingWindowProperty {interval :: (Value Prelude.Text),
                            offset :: (Prelude.Maybe (Value Prelude.Text))}
mkTumblingWindowProperty ::
  Value Prelude.Text -> TumblingWindowProperty
mkTumblingWindowProperty interval
  = TumblingWindowProperty
      {interval = interval, offset = Prelude.Nothing}
instance ToResourceProperties TumblingWindowProperty where
  toResourceProperties TumblingWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.TumblingWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Interval" JSON..= interval]
                           (Prelude.catMaybes [(JSON..=) "Offset" Prelude.<$> offset]))}
instance JSON.ToJSON TumblingWindowProperty where
  toJSON TumblingWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Interval" JSON..= interval]
              (Prelude.catMaybes [(JSON..=) "Offset" Prelude.<$> offset])))
instance Property "Interval" TumblingWindowProperty where
  type PropertyType "Interval" TumblingWindowProperty = Value Prelude.Text
  set newValue TumblingWindowProperty {..}
    = TumblingWindowProperty {interval = newValue, ..}
instance Property "Offset" TumblingWindowProperty where
  type PropertyType "Offset" TumblingWindowProperty = Value Prelude.Text
  set newValue TumblingWindowProperty {..}
    = TumblingWindowProperty {offset = Prelude.pure newValue, ..}