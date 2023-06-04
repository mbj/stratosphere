module Stratosphere.QuickSight.Dashboard.TopBottomRankedComputationProperty (
        module Exports, TopBottomRankedComputationProperty(..),
        mkTopBottomRankedComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopBottomRankedComputationProperty
  = TopBottomRankedComputationProperty {category :: DimensionFieldProperty,
                                        computationId :: (Value Prelude.Text),
                                        name :: (Prelude.Maybe (Value Prelude.Text)),
                                        resultSize :: (Prelude.Maybe (Value Prelude.Double)),
                                        type' :: (Value Prelude.Text),
                                        value :: (Prelude.Maybe MeasureFieldProperty)}
mkTopBottomRankedComputationProperty ::
  DimensionFieldProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> TopBottomRankedComputationProperty
mkTopBottomRankedComputationProperty category computationId type'
  = TopBottomRankedComputationProperty
      {category = category, computationId = computationId, type' = type',
       name = Prelude.Nothing, resultSize = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TopBottomRankedComputationProperty where
  toResourceProperties TopBottomRankedComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TopBottomRankedComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Category" JSON..= category,
                            "ComputationId" JSON..= computationId, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ResultSize" Prelude.<$> resultSize,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TopBottomRankedComputationProperty where
  toJSON TopBottomRankedComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Category" JSON..= category,
               "ComputationId" JSON..= computationId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ResultSize" Prelude.<$> resultSize,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Category" TopBottomRankedComputationProperty where
  type PropertyType "Category" TopBottomRankedComputationProperty = DimensionFieldProperty
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty {category = newValue, ..}
instance Property "ComputationId" TopBottomRankedComputationProperty where
  type PropertyType "ComputationId" TopBottomRankedComputationProperty = Value Prelude.Text
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty {computationId = newValue, ..}
instance Property "Name" TopBottomRankedComputationProperty where
  type PropertyType "Name" TopBottomRankedComputationProperty = Value Prelude.Text
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "ResultSize" TopBottomRankedComputationProperty where
  type PropertyType "ResultSize" TopBottomRankedComputationProperty = Value Prelude.Double
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty
        {resultSize = Prelude.pure newValue, ..}
instance Property "Type" TopBottomRankedComputationProperty where
  type PropertyType "Type" TopBottomRankedComputationProperty = Value Prelude.Text
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty {type' = newValue, ..}
instance Property "Value" TopBottomRankedComputationProperty where
  type PropertyType "Value" TopBottomRankedComputationProperty = MeasureFieldProperty
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty
        {value = Prelude.pure newValue, ..}