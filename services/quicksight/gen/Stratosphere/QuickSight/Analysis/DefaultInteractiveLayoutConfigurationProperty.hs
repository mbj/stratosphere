module Stratosphere.QuickSight.Analysis.DefaultInteractiveLayoutConfigurationProperty (
        module Exports, DefaultInteractiveLayoutConfigurationProperty(..),
        mkDefaultInteractiveLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultFreeFormLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultGridLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DefaultInteractiveLayoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultinteractivelayoutconfiguration.html>
    DefaultInteractiveLayoutConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultinteractivelayoutconfiguration.html#cfn-quicksight-analysis-defaultinteractivelayoutconfiguration-freeform>
                                                   freeForm :: (Prelude.Maybe DefaultFreeFormLayoutConfigurationProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultinteractivelayoutconfiguration.html#cfn-quicksight-analysis-defaultinteractivelayoutconfiguration-grid>
                                                   grid :: (Prelude.Maybe DefaultGridLayoutConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultInteractiveLayoutConfigurationProperty ::
  DefaultInteractiveLayoutConfigurationProperty
mkDefaultInteractiveLayoutConfigurationProperty
  = DefaultInteractiveLayoutConfigurationProperty
      {haddock_workaround_ = (), freeForm = Prelude.Nothing,
       grid = Prelude.Nothing}
instance ToResourceProperties DefaultInteractiveLayoutConfigurationProperty where
  toResourceProperties
    DefaultInteractiveLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DefaultInteractiveLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FreeForm" Prelude.<$> freeForm,
                            (JSON..=) "Grid" Prelude.<$> grid])}
instance JSON.ToJSON DefaultInteractiveLayoutConfigurationProperty where
  toJSON DefaultInteractiveLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FreeForm" Prelude.<$> freeForm,
               (JSON..=) "Grid" Prelude.<$> grid]))
instance Property "FreeForm" DefaultInteractiveLayoutConfigurationProperty where
  type PropertyType "FreeForm" DefaultInteractiveLayoutConfigurationProperty = DefaultFreeFormLayoutConfigurationProperty
  set newValue DefaultInteractiveLayoutConfigurationProperty {..}
    = DefaultInteractiveLayoutConfigurationProperty
        {freeForm = Prelude.pure newValue, ..}
instance Property "Grid" DefaultInteractiveLayoutConfigurationProperty where
  type PropertyType "Grid" DefaultInteractiveLayoutConfigurationProperty = DefaultGridLayoutConfigurationProperty
  set newValue DefaultInteractiveLayoutConfigurationProperty {..}
    = DefaultInteractiveLayoutConfigurationProperty
        {grid = Prelude.pure newValue, ..}