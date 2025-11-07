module Stratosphere.QuickSight.Template.KPIFieldWellsProperty (
        module Exports, KPIFieldWellsProperty(..), mkKPIFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data KPIFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpifieldwells.html>
    KPIFieldWellsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpifieldwells.html#cfn-quicksight-template-kpifieldwells-targetvalues>
                           targetValues :: (Prelude.Maybe [MeasureFieldProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpifieldwells.html#cfn-quicksight-template-kpifieldwells-trendgroups>
                           trendGroups :: (Prelude.Maybe [DimensionFieldProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpifieldwells.html#cfn-quicksight-template-kpifieldwells-values>
                           values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIFieldWellsProperty :: KPIFieldWellsProperty
mkKPIFieldWellsProperty
  = KPIFieldWellsProperty
      {haddock_workaround_ = (), targetValues = Prelude.Nothing,
       trendGroups = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties KPIFieldWellsProperty where
  toResourceProperties KPIFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.KPIFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetValues" Prelude.<$> targetValues,
                            (JSON..=) "TrendGroups" Prelude.<$> trendGroups,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON KPIFieldWellsProperty where
  toJSON KPIFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetValues" Prelude.<$> targetValues,
               (JSON..=) "TrendGroups" Prelude.<$> trendGroups,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "TargetValues" KPIFieldWellsProperty where
  type PropertyType "TargetValues" KPIFieldWellsProperty = [MeasureFieldProperty]
  set newValue KPIFieldWellsProperty {..}
    = KPIFieldWellsProperty {targetValues = Prelude.pure newValue, ..}
instance Property "TrendGroups" KPIFieldWellsProperty where
  type PropertyType "TrendGroups" KPIFieldWellsProperty = [DimensionFieldProperty]
  set newValue KPIFieldWellsProperty {..}
    = KPIFieldWellsProperty {trendGroups = Prelude.pure newValue, ..}
instance Property "Values" KPIFieldWellsProperty where
  type PropertyType "Values" KPIFieldWellsProperty = [MeasureFieldProperty]
  set newValue KPIFieldWellsProperty {..}
    = KPIFieldWellsProperty {values = Prelude.pure newValue, ..}