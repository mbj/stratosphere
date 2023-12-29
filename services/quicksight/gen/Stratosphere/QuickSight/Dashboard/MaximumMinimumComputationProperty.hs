module Stratosphere.QuickSight.Dashboard.MaximumMinimumComputationProperty (
        module Exports, MaximumMinimumComputationProperty(..),
        mkMaximumMinimumComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaximumMinimumComputationProperty
  = MaximumMinimumComputationProperty {computationId :: (Value Prelude.Text),
                                       name :: (Prelude.Maybe (Value Prelude.Text)),
                                       time :: DimensionFieldProperty,
                                       type' :: (Value Prelude.Text),
                                       value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaximumMinimumComputationProperty ::
  Value Prelude.Text
  -> DimensionFieldProperty
     -> Value Prelude.Text -> MaximumMinimumComputationProperty
mkMaximumMinimumComputationProperty computationId time type'
  = MaximumMinimumComputationProperty
      {computationId = computationId, time = time, type' = type',
       name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties MaximumMinimumComputationProperty where
  toResourceProperties MaximumMinimumComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.MaximumMinimumComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId, "Time" JSON..= time,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON MaximumMinimumComputationProperty where
  toJSON MaximumMinimumComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId, "Time" JSON..= time,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "ComputationId" MaximumMinimumComputationProperty where
  type PropertyType "ComputationId" MaximumMinimumComputationProperty = Value Prelude.Text
  set newValue MaximumMinimumComputationProperty {..}
    = MaximumMinimumComputationProperty {computationId = newValue, ..}
instance Property "Name" MaximumMinimumComputationProperty where
  type PropertyType "Name" MaximumMinimumComputationProperty = Value Prelude.Text
  set newValue MaximumMinimumComputationProperty {..}
    = MaximumMinimumComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Time" MaximumMinimumComputationProperty where
  type PropertyType "Time" MaximumMinimumComputationProperty = DimensionFieldProperty
  set newValue MaximumMinimumComputationProperty {..}
    = MaximumMinimumComputationProperty {time = newValue, ..}
instance Property "Type" MaximumMinimumComputationProperty where
  type PropertyType "Type" MaximumMinimumComputationProperty = Value Prelude.Text
  set newValue MaximumMinimumComputationProperty {..}
    = MaximumMinimumComputationProperty {type' = newValue, ..}
instance Property "Value" MaximumMinimumComputationProperty where
  type PropertyType "Value" MaximumMinimumComputationProperty = MeasureFieldProperty
  set newValue MaximumMinimumComputationProperty {..}
    = MaximumMinimumComputationProperty
        {value = Prelude.pure newValue, ..}