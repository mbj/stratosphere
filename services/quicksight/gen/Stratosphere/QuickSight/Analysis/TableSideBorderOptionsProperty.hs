module Stratosphere.QuickSight.Analysis.TableSideBorderOptionsProperty (
        module Exports, TableSideBorderOptionsProperty(..),
        mkTableSideBorderOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableBorderOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TableSideBorderOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html>
    TableSideBorderOptionsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-bottom>
                                    bottom :: (Prelude.Maybe TableBorderOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-innerhorizontal>
                                    innerHorizontal :: (Prelude.Maybe TableBorderOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-innervertical>
                                    innerVertical :: (Prelude.Maybe TableBorderOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-left>
                                    left :: (Prelude.Maybe TableBorderOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-right>
                                    right :: (Prelude.Maybe TableBorderOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-top>
                                    top :: (Prelude.Maybe TableBorderOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableSideBorderOptionsProperty :: TableSideBorderOptionsProperty
mkTableSideBorderOptionsProperty
  = TableSideBorderOptionsProperty
      {haddock_workaround_ = (), bottom = Prelude.Nothing,
       innerHorizontal = Prelude.Nothing, innerVertical = Prelude.Nothing,
       left = Prelude.Nothing, right = Prelude.Nothing,
       top = Prelude.Nothing}
instance ToResourceProperties TableSideBorderOptionsProperty where
  toResourceProperties TableSideBorderOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableSideBorderOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bottom" Prelude.<$> bottom,
                            (JSON..=) "InnerHorizontal" Prelude.<$> innerHorizontal,
                            (JSON..=) "InnerVertical" Prelude.<$> innerVertical,
                            (JSON..=) "Left" Prelude.<$> left,
                            (JSON..=) "Right" Prelude.<$> right,
                            (JSON..=) "Top" Prelude.<$> top])}
instance JSON.ToJSON TableSideBorderOptionsProperty where
  toJSON TableSideBorderOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bottom" Prelude.<$> bottom,
               (JSON..=) "InnerHorizontal" Prelude.<$> innerHorizontal,
               (JSON..=) "InnerVertical" Prelude.<$> innerVertical,
               (JSON..=) "Left" Prelude.<$> left,
               (JSON..=) "Right" Prelude.<$> right,
               (JSON..=) "Top" Prelude.<$> top]))
instance Property "Bottom" TableSideBorderOptionsProperty where
  type PropertyType "Bottom" TableSideBorderOptionsProperty = TableBorderOptionsProperty
  set newValue TableSideBorderOptionsProperty {..}
    = TableSideBorderOptionsProperty
        {bottom = Prelude.pure newValue, ..}
instance Property "InnerHorizontal" TableSideBorderOptionsProperty where
  type PropertyType "InnerHorizontal" TableSideBorderOptionsProperty = TableBorderOptionsProperty
  set newValue TableSideBorderOptionsProperty {..}
    = TableSideBorderOptionsProperty
        {innerHorizontal = Prelude.pure newValue, ..}
instance Property "InnerVertical" TableSideBorderOptionsProperty where
  type PropertyType "InnerVertical" TableSideBorderOptionsProperty = TableBorderOptionsProperty
  set newValue TableSideBorderOptionsProperty {..}
    = TableSideBorderOptionsProperty
        {innerVertical = Prelude.pure newValue, ..}
instance Property "Left" TableSideBorderOptionsProperty where
  type PropertyType "Left" TableSideBorderOptionsProperty = TableBorderOptionsProperty
  set newValue TableSideBorderOptionsProperty {..}
    = TableSideBorderOptionsProperty {left = Prelude.pure newValue, ..}
instance Property "Right" TableSideBorderOptionsProperty where
  type PropertyType "Right" TableSideBorderOptionsProperty = TableBorderOptionsProperty
  set newValue TableSideBorderOptionsProperty {..}
    = TableSideBorderOptionsProperty
        {right = Prelude.pure newValue, ..}
instance Property "Top" TableSideBorderOptionsProperty where
  type PropertyType "Top" TableSideBorderOptionsProperty = TableBorderOptionsProperty
  set newValue TableSideBorderOptionsProperty {..}
    = TableSideBorderOptionsProperty {top = Prelude.pure newValue, ..}