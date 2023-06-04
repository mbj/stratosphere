module Stratosphere.QuickSight.Analysis.UniqueValuesComputationProperty (
        module Exports, UniqueValuesComputationProperty(..),
        mkUniqueValuesComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UniqueValuesComputationProperty
  = UniqueValuesComputationProperty {category :: DimensionFieldProperty,
                                     computationId :: (Value Prelude.Text),
                                     name :: (Prelude.Maybe (Value Prelude.Text))}
mkUniqueValuesComputationProperty ::
  DimensionFieldProperty
  -> Value Prelude.Text -> UniqueValuesComputationProperty
mkUniqueValuesComputationProperty category computationId
  = UniqueValuesComputationProperty
      {category = category, computationId = computationId,
       name = Prelude.Nothing}
instance ToResourceProperties UniqueValuesComputationProperty where
  toResourceProperties UniqueValuesComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.UniqueValuesComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Category" JSON..= category,
                            "ComputationId" JSON..= computationId]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON UniqueValuesComputationProperty where
  toJSON UniqueValuesComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Category" JSON..= category,
               "ComputationId" JSON..= computationId]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Category" UniqueValuesComputationProperty where
  type PropertyType "Category" UniqueValuesComputationProperty = DimensionFieldProperty
  set newValue UniqueValuesComputationProperty {..}
    = UniqueValuesComputationProperty {category = newValue, ..}
instance Property "ComputationId" UniqueValuesComputationProperty where
  type PropertyType "ComputationId" UniqueValuesComputationProperty = Value Prelude.Text
  set newValue UniqueValuesComputationProperty {..}
    = UniqueValuesComputationProperty {computationId = newValue, ..}
instance Property "Name" UniqueValuesComputationProperty where
  type PropertyType "Name" UniqueValuesComputationProperty = Value Prelude.Text
  set newValue UniqueValuesComputationProperty {..}
    = UniqueValuesComputationProperty
        {name = Prelude.pure newValue, ..}