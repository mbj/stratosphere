module Stratosphere.QuickSight.Dashboard.DimensionFieldProperty (
        module Exports, DimensionFieldProperty(..),
        mkDimensionFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CategoricalDimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateDimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NumericalDimensionFieldProperty as Exports
import Stratosphere.ResourceProperties
data DimensionFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dimensionfield.html>
    DimensionFieldProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dimensionfield.html#cfn-quicksight-dashboard-dimensionfield-categoricaldimensionfield>
                            categoricalDimensionField :: (Prelude.Maybe CategoricalDimensionFieldProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dimensionfield.html#cfn-quicksight-dashboard-dimensionfield-datedimensionfield>
                            dateDimensionField :: (Prelude.Maybe DateDimensionFieldProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dimensionfield.html#cfn-quicksight-dashboard-dimensionfield-numericaldimensionfield>
                            numericalDimensionField :: (Prelude.Maybe NumericalDimensionFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionFieldProperty :: DimensionFieldProperty
mkDimensionFieldProperty
  = DimensionFieldProperty
      {haddock_workaround_ = (),
       categoricalDimensionField = Prelude.Nothing,
       dateDimensionField = Prelude.Nothing,
       numericalDimensionField = Prelude.Nothing}
instance ToResourceProperties DimensionFieldProperty where
  toResourceProperties DimensionFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DimensionField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoricalDimensionField"
                              Prelude.<$> categoricalDimensionField,
                            (JSON..=) "DateDimensionField" Prelude.<$> dateDimensionField,
                            (JSON..=) "NumericalDimensionField"
                              Prelude.<$> numericalDimensionField])}
instance JSON.ToJSON DimensionFieldProperty where
  toJSON DimensionFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoricalDimensionField"
                 Prelude.<$> categoricalDimensionField,
               (JSON..=) "DateDimensionField" Prelude.<$> dateDimensionField,
               (JSON..=) "NumericalDimensionField"
                 Prelude.<$> numericalDimensionField]))
instance Property "CategoricalDimensionField" DimensionFieldProperty where
  type PropertyType "CategoricalDimensionField" DimensionFieldProperty = CategoricalDimensionFieldProperty
  set newValue DimensionFieldProperty {..}
    = DimensionFieldProperty
        {categoricalDimensionField = Prelude.pure newValue, ..}
instance Property "DateDimensionField" DimensionFieldProperty where
  type PropertyType "DateDimensionField" DimensionFieldProperty = DateDimensionFieldProperty
  set newValue DimensionFieldProperty {..}
    = DimensionFieldProperty
        {dateDimensionField = Prelude.pure newValue, ..}
instance Property "NumericalDimensionField" DimensionFieldProperty where
  type PropertyType "NumericalDimensionField" DimensionFieldProperty = NumericalDimensionFieldProperty
  set newValue DimensionFieldProperty {..}
    = DimensionFieldProperty
        {numericalDimensionField = Prelude.pure newValue, ..}