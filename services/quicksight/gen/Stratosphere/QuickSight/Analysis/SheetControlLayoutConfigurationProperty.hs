module Stratosphere.QuickSight.Analysis.SheetControlLayoutConfigurationProperty (
        module Exports, SheetControlLayoutConfigurationProperty(..),
        mkSheetControlLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GridLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SheetControlLayoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetcontrollayoutconfiguration.html>
    SheetControlLayoutConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetcontrollayoutconfiguration.html#cfn-quicksight-analysis-sheetcontrollayoutconfiguration-gridlayout>
                                             gridLayout :: (Prelude.Maybe GridLayoutConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetControlLayoutConfigurationProperty ::
  SheetControlLayoutConfigurationProperty
mkSheetControlLayoutConfigurationProperty
  = SheetControlLayoutConfigurationProperty
      {haddock_workaround_ = (), gridLayout = Prelude.Nothing}
instance ToResourceProperties SheetControlLayoutConfigurationProperty where
  toResourceProperties SheetControlLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetControlLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GridLayout" Prelude.<$> gridLayout])}
instance JSON.ToJSON SheetControlLayoutConfigurationProperty where
  toJSON SheetControlLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GridLayout" Prelude.<$> gridLayout]))
instance Property "GridLayout" SheetControlLayoutConfigurationProperty where
  type PropertyType "GridLayout" SheetControlLayoutConfigurationProperty = GridLayoutConfigurationProperty
  set newValue SheetControlLayoutConfigurationProperty {..}
    = SheetControlLayoutConfigurationProperty
        {gridLayout = Prelude.pure newValue, ..}