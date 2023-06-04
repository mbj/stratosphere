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
  = DefaultInteractiveLayoutConfigurationProperty {freeForm :: (Prelude.Maybe DefaultFreeFormLayoutConfigurationProperty),
                                                   grid :: (Prelude.Maybe DefaultGridLayoutConfigurationProperty)}
mkDefaultInteractiveLayoutConfigurationProperty ::
  DefaultInteractiveLayoutConfigurationProperty
mkDefaultInteractiveLayoutConfigurationProperty
  = DefaultInteractiveLayoutConfigurationProperty
      {freeForm = Prelude.Nothing, grid = Prelude.Nothing}
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