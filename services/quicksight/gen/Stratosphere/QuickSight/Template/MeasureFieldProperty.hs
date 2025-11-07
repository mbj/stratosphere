module Stratosphere.QuickSight.Template.MeasureFieldProperty (
        module Exports, MeasureFieldProperty(..), mkMeasureFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CalculatedMeasureFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CategoricalMeasureFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DateMeasureFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericalMeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data MeasureFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-measurefield.html>
    MeasureFieldProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-measurefield.html#cfn-quicksight-template-measurefield-calculatedmeasurefield>
                          calculatedMeasureField :: (Prelude.Maybe CalculatedMeasureFieldProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-measurefield.html#cfn-quicksight-template-measurefield-categoricalmeasurefield>
                          categoricalMeasureField :: (Prelude.Maybe CategoricalMeasureFieldProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-measurefield.html#cfn-quicksight-template-measurefield-datemeasurefield>
                          dateMeasureField :: (Prelude.Maybe DateMeasureFieldProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-measurefield.html#cfn-quicksight-template-measurefield-numericalmeasurefield>
                          numericalMeasureField :: (Prelude.Maybe NumericalMeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMeasureFieldProperty :: MeasureFieldProperty
mkMeasureFieldProperty
  = MeasureFieldProperty
      {haddock_workaround_ = (),
       calculatedMeasureField = Prelude.Nothing,
       categoricalMeasureField = Prelude.Nothing,
       dateMeasureField = Prelude.Nothing,
       numericalMeasureField = Prelude.Nothing}
instance ToResourceProperties MeasureFieldProperty where
  toResourceProperties MeasureFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.MeasureField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CalculatedMeasureField"
                              Prelude.<$> calculatedMeasureField,
                            (JSON..=) "CategoricalMeasureField"
                              Prelude.<$> categoricalMeasureField,
                            (JSON..=) "DateMeasureField" Prelude.<$> dateMeasureField,
                            (JSON..=) "NumericalMeasureField"
                              Prelude.<$> numericalMeasureField])}
instance JSON.ToJSON MeasureFieldProperty where
  toJSON MeasureFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CalculatedMeasureField"
                 Prelude.<$> calculatedMeasureField,
               (JSON..=) "CategoricalMeasureField"
                 Prelude.<$> categoricalMeasureField,
               (JSON..=) "DateMeasureField" Prelude.<$> dateMeasureField,
               (JSON..=) "NumericalMeasureField"
                 Prelude.<$> numericalMeasureField]))
instance Property "CalculatedMeasureField" MeasureFieldProperty where
  type PropertyType "CalculatedMeasureField" MeasureFieldProperty = CalculatedMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {calculatedMeasureField = Prelude.pure newValue, ..}
instance Property "CategoricalMeasureField" MeasureFieldProperty where
  type PropertyType "CategoricalMeasureField" MeasureFieldProperty = CategoricalMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {categoricalMeasureField = Prelude.pure newValue, ..}
instance Property "DateMeasureField" MeasureFieldProperty where
  type PropertyType "DateMeasureField" MeasureFieldProperty = DateMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {dateMeasureField = Prelude.pure newValue, ..}
instance Property "NumericalMeasureField" MeasureFieldProperty where
  type PropertyType "NumericalMeasureField" MeasureFieldProperty = NumericalMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {numericalMeasureField = Prelude.pure newValue, ..}