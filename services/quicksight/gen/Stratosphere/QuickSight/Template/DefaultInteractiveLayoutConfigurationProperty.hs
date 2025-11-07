module Stratosphere.QuickSight.Template.DefaultInteractiveLayoutConfigurationProperty (
        module Exports, DefaultInteractiveLayoutConfigurationProperty(..),
        mkDefaultInteractiveLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultFreeFormLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultGridLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DefaultInteractiveLayoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultinteractivelayoutconfiguration.html>
    DefaultInteractiveLayoutConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultinteractivelayoutconfiguration.html#cfn-quicksight-template-defaultinteractivelayoutconfiguration-freeform>
                                                   freeForm :: (Prelude.Maybe DefaultFreeFormLayoutConfigurationProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultinteractivelayoutconfiguration.html#cfn-quicksight-template-defaultinteractivelayoutconfiguration-grid>
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
        {awsType = "AWS::QuickSight::Template.DefaultInteractiveLayoutConfiguration",
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