module Stratosphere.QuickSight.Dashboard.TopBottomMoversComputationProperty (
        module Exports, TopBottomMoversComputationProperty(..),
        mkTopBottomMoversComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopBottomMoversComputationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html>
    TopBottomMoversComputationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-category>
                                        category :: (Prelude.Maybe DimensionFieldProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-computationid>
                                        computationId :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-moversize>
                                        moverSize :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-name>
                                        name :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-sortorder>
                                        sortOrder :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-time>
                                        time :: (Prelude.Maybe DimensionFieldProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-type>
                                        type' :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-topbottommoverscomputation.html#cfn-quicksight-dashboard-topbottommoverscomputation-value>
                                        value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopBottomMoversComputationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TopBottomMoversComputationProperty
mkTopBottomMoversComputationProperty computationId type'
  = TopBottomMoversComputationProperty
      {haddock_workaround_ = (), computationId = computationId,
       type' = type', category = Prelude.Nothing,
       moverSize = Prelude.Nothing, name = Prelude.Nothing,
       sortOrder = Prelude.Nothing, time = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TopBottomMoversComputationProperty where
  toResourceProperties TopBottomMoversComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TopBottomMoversComputation",
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