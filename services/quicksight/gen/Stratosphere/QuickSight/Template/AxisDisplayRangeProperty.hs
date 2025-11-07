module Stratosphere.QuickSight.Template.AxisDisplayRangeProperty (
        module Exports, AxisDisplayRangeProperty(..),
        mkAxisDisplayRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDisplayMinMaxRangeProperty as Exports
import Stratosphere.ResourceProperties
data AxisDisplayRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayrange.html>
    AxisDisplayRangeProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayrange.html#cfn-quicksight-template-axisdisplayrange-datadriven>
                              dataDriven :: (Prelude.Maybe JSON.Object),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdisplayrange.html#cfn-quicksight-template-axisdisplayrange-minmax>
                              minMax :: (Prelude.Maybe AxisDisplayMinMaxRangeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisDisplayRangeProperty :: AxisDisplayRangeProperty
mkAxisDisplayRangeProperty
  = AxisDisplayRangeProperty
      {haddock_workaround_ = (), dataDriven = Prelude.Nothing,
       minMax = Prelude.Nothing}
instance ToResourceProperties AxisDisplayRangeProperty where
  toResourceProperties AxisDisplayRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.AxisDisplayRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataDriven" Prelude.<$> dataDriven,
                            (JSON..=) "MinMax" Prelude.<$> minMax])}
instance JSON.ToJSON AxisDisplayRangeProperty where
  toJSON AxisDisplayRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataDriven" Prelude.<$> dataDriven,
               (JSON..=) "MinMax" Prelude.<$> minMax]))
instance Property "DataDriven" AxisDisplayRangeProperty where
  type PropertyType "DataDriven" AxisDisplayRangeProperty = JSON.Object
  set newValue AxisDisplayRangeProperty {..}
    = AxisDisplayRangeProperty {dataDriven = Prelude.pure newValue, ..}
instance Property "MinMax" AxisDisplayRangeProperty where
  type PropertyType "MinMax" AxisDisplayRangeProperty = AxisDisplayMinMaxRangeProperty
  set newValue AxisDisplayRangeProperty {..}
    = AxisDisplayRangeProperty {minMax = Prelude.pure newValue, ..}