module Stratosphere.QuickSight.Template.DefaultNewSheetConfigurationProperty (
        module Exports, DefaultNewSheetConfigurationProperty(..),
        mkDefaultNewSheetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultInteractiveLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultPaginatedLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultNewSheetConfigurationProperty
  = DefaultNewSheetConfigurationProperty {interactiveLayoutConfiguration :: (Prelude.Maybe DefaultInteractiveLayoutConfigurationProperty),
                                          paginatedLayoutConfiguration :: (Prelude.Maybe DefaultPaginatedLayoutConfigurationProperty),
                                          sheetContentType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultNewSheetConfigurationProperty ::
  DefaultNewSheetConfigurationProperty
mkDefaultNewSheetConfigurationProperty
  = DefaultNewSheetConfigurationProperty
      {interactiveLayoutConfiguration = Prelude.Nothing,
       paginatedLayoutConfiguration = Prelude.Nothing,
       sheetContentType = Prelude.Nothing}
instance ToResourceProperties DefaultNewSheetConfigurationProperty where
  toResourceProperties DefaultNewSheetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DefaultNewSheetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InteractiveLayoutConfiguration"
                              Prelude.<$> interactiveLayoutConfiguration,
                            (JSON..=) "PaginatedLayoutConfiguration"
                              Prelude.<$> paginatedLayoutConfiguration,
                            (JSON..=) "SheetContentType" Prelude.<$> sheetContentType])}
instance JSON.ToJSON DefaultNewSheetConfigurationProperty where
  toJSON DefaultNewSheetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InteractiveLayoutConfiguration"
                 Prelude.<$> interactiveLayoutConfiguration,
               (JSON..=) "PaginatedLayoutConfiguration"
                 Prelude.<$> paginatedLayoutConfiguration,
               (JSON..=) "SheetContentType" Prelude.<$> sheetContentType]))
instance Property "InteractiveLayoutConfiguration" DefaultNewSheetConfigurationProperty where
  type PropertyType "InteractiveLayoutConfiguration" DefaultNewSheetConfigurationProperty = DefaultInteractiveLayoutConfigurationProperty
  set newValue DefaultNewSheetConfigurationProperty {..}
    = DefaultNewSheetConfigurationProperty
        {interactiveLayoutConfiguration = Prelude.pure newValue, ..}
instance Property "PaginatedLayoutConfiguration" DefaultNewSheetConfigurationProperty where
  type PropertyType "PaginatedLayoutConfiguration" DefaultNewSheetConfigurationProperty = DefaultPaginatedLayoutConfigurationProperty
  set newValue DefaultNewSheetConfigurationProperty {..}
    = DefaultNewSheetConfigurationProperty
        {paginatedLayoutConfiguration = Prelude.pure newValue, ..}
instance Property "SheetContentType" DefaultNewSheetConfigurationProperty where
  type PropertyType "SheetContentType" DefaultNewSheetConfigurationProperty = Value Prelude.Text
  set newValue DefaultNewSheetConfigurationProperty {..}
    = DefaultNewSheetConfigurationProperty
        {sheetContentType = Prelude.pure newValue, ..}