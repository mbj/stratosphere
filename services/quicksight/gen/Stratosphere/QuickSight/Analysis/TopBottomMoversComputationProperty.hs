module Stratosphere.QuickSight.Analysis.TopBottomMoversComputationProperty (
        module Exports, TopBottomMoversComputationProperty(..),
        mkTopBottomMoversComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopBottomMoversComputationProperty
  = TopBottomMoversComputationProperty {category :: (Prelude.Maybe DimensionFieldProperty),
                                        computationId :: (Value Prelude.Text),
                                        moverSize :: (Prelude.Maybe (Value Prelude.Double)),
                                        name :: (Prelude.Maybe (Value Prelude.Text)),
                                        sortOrder :: (Prelude.Maybe (Value Prelude.Text)),
                                        time :: (Prelude.Maybe DimensionFieldProperty),
                                        type' :: (Value Prelude.Text),
                                        value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopBottomMoversComputationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TopBottomMoversComputationProperty
mkTopBottomMoversComputationProperty computationId type'
  = TopBottomMoversComputationProperty
      {computationId = computationId, type' = type',
       category = Prelude.Nothing, moverSize = Prelude.Nothing,
       name = Prelude.Nothing, sortOrder = Prelude.Nothing,
       time = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TopBottomMoversComputationProperty where
  toResourceProperties TopBottomMoversComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TopBottomMoversComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Category" Prelude.<$> category,
                               (JSON..=) "MoverSize" Prelude.<$> moverSize,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "SortOrder" Prelude.<$> sortOrder,
                               (JSON..=) "Time" Prelude.<$> time,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TopBottomMoversComputationProperty where
  toJSON TopBottomMoversComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Category" Prelude.<$> category,
                  (JSON..=) "MoverSize" Prelude.<$> moverSize,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "SortOrder" Prelude.<$> sortOrder,
                  (JSON..=) "Time" Prelude.<$> time,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Category" TopBottomMoversComputationProperty where
  type PropertyType "Category" TopBottomMoversComputationProperty = DimensionFieldProperty
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty
        {category = Prelude.pure newValue, ..}
instance Property "ComputationId" TopBottomMoversComputationProperty where
  type PropertyType "ComputationId" TopBottomMoversComputationProperty = Value Prelude.Text
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty {computationId = newValue, ..}
instance Property "MoverSize" TopBottomMoversComputationProperty where
  type PropertyType "MoverSize" TopBottomMoversComputationProperty = Value Prelude.Double
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty
        {moverSize = Prelude.pure newValue, ..}
instance Property "Name" TopBottomMoversComputationProperty where
  type PropertyType "Name" TopBottomMoversComputationProperty = Value Prelude.Text
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "SortOrder" TopBottomMoversComputationProperty where
  type PropertyType "SortOrder" TopBottomMoversComputationProperty = Value Prelude.Text
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty
        {sortOrder = Prelude.pure newValue, ..}
instance Property "Time" TopBottomMoversComputationProperty where
  type PropertyType "Time" TopBottomMoversComputationProperty = DimensionFieldProperty
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty
        {time = Prelude.pure newValue, ..}
instance Property "Type" TopBottomMoversComputationProperty where
  type PropertyType "Type" TopBottomMoversComputationProperty = Value Prelude.Text
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty {type' = newValue, ..}
instance Property "Value" TopBottomMoversComputationProperty where
  type PropertyType "Value" TopBottomMoversComputationProperty = MeasureFieldProperty
  set newValue TopBottomMoversComputationProperty {..}
    = TopBottomMoversComputationProperty
        {value = Prelude.pure newValue, ..}