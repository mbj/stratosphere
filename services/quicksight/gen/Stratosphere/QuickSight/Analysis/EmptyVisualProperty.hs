module Stratosphere.QuickSight.Analysis.EmptyVisualProperty (
        module Exports, EmptyVisualProperty(..), mkEmptyVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmptyVisualProperty
  = EmptyVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                         dataSetIdentifier :: (Value Prelude.Text),
                         visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmptyVisualProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EmptyVisualProperty
mkEmptyVisualProperty dataSetIdentifier visualId
  = EmptyVisualProperty
      {dataSetIdentifier = dataSetIdentifier, visualId = visualId,
       actions = Prelude.Nothing}
instance ToResourceProperties EmptyVisualProperty where
  toResourceProperties EmptyVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.EmptyVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifier" JSON..= dataSetIdentifier,
                            "VisualId" JSON..= visualId]
                           (Prelude.catMaybes [(JSON..=) "Actions" Prelude.<$> actions]))}
instance JSON.ToJSON EmptyVisualProperty where
  toJSON EmptyVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifier" JSON..= dataSetIdentifier,
               "VisualId" JSON..= visualId]
              (Prelude.catMaybes [(JSON..=) "Actions" Prelude.<$> actions])))
instance Property "Actions" EmptyVisualProperty where
  type PropertyType "Actions" EmptyVisualProperty = [VisualCustomActionProperty]
  set newValue EmptyVisualProperty {..}
    = EmptyVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "DataSetIdentifier" EmptyVisualProperty where
  type PropertyType "DataSetIdentifier" EmptyVisualProperty = Value Prelude.Text
  set newValue EmptyVisualProperty {..}
    = EmptyVisualProperty {dataSetIdentifier = newValue, ..}
instance Property "VisualId" EmptyVisualProperty where
  type PropertyType "VisualId" EmptyVisualProperty = Value Prelude.Text
  set newValue EmptyVisualProperty {..}
    = EmptyVisualProperty {visualId = newValue, ..}