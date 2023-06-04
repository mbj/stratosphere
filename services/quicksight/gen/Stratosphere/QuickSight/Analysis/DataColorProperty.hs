module Stratosphere.QuickSight.Analysis.DataColorProperty (
        DataColorProperty(..), mkDataColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataColorProperty
  = DataColorProperty {color :: (Prelude.Maybe (Value Prelude.Text)),
                       dataValue :: (Prelude.Maybe (Value Prelude.Double))}
mkDataColorProperty :: DataColorProperty
mkDataColorProperty
  = DataColorProperty
      {color = Prelude.Nothing, dataValue = Prelude.Nothing}
instance ToResourceProperties DataColorProperty where
  toResourceProperties DataColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DataColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Color" Prelude.<$> color,
                            (JSON..=) "DataValue" Prelude.<$> dataValue])}
instance JSON.ToJSON DataColorProperty where
  toJSON DataColorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Color" Prelude.<$> color,
               (JSON..=) "DataValue" Prelude.<$> dataValue]))
instance Property "Color" DataColorProperty where
  type PropertyType "Color" DataColorProperty = Value Prelude.Text
  set newValue DataColorProperty {..}
    = DataColorProperty {color = Prelude.pure newValue, ..}
instance Property "DataValue" DataColorProperty where
  type PropertyType "DataValue" DataColorProperty = Value Prelude.Double
  set newValue DataColorProperty {..}
    = DataColorProperty {dataValue = Prelude.pure newValue, ..}