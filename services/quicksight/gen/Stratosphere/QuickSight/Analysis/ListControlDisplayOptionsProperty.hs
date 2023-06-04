module Stratosphere.QuickSight.Analysis.ListControlDisplayOptionsProperty (
        module Exports, ListControlDisplayOptionsProperty(..),
        mkListControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlSearchOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlSelectAllOptionsProperty as Exports
import Stratosphere.ResourceProperties
data ListControlDisplayOptionsProperty
  = ListControlDisplayOptionsProperty {searchOptions :: (Prelude.Maybe ListControlSearchOptionsProperty),
                                       selectAllOptions :: (Prelude.Maybe ListControlSelectAllOptionsProperty),
                                       titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
mkListControlDisplayOptionsProperty ::
  ListControlDisplayOptionsProperty
mkListControlDisplayOptionsProperty
  = ListControlDisplayOptionsProperty
      {searchOptions = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing, titleOptions = Prelude.Nothing}
instance ToResourceProperties ListControlDisplayOptionsProperty where
  toResourceProperties ListControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ListControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SearchOptions" Prelude.<$> searchOptions,
                            (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON ListControlDisplayOptionsProperty where
  toJSON ListControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SearchOptions" Prelude.<$> searchOptions,
               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "SearchOptions" ListControlDisplayOptionsProperty where
  type PropertyType "SearchOptions" ListControlDisplayOptionsProperty = ListControlSearchOptionsProperty
  set newValue ListControlDisplayOptionsProperty {..}
    = ListControlDisplayOptionsProperty
        {searchOptions = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" ListControlDisplayOptionsProperty where
  type PropertyType "SelectAllOptions" ListControlDisplayOptionsProperty = ListControlSelectAllOptionsProperty
  set newValue ListControlDisplayOptionsProperty {..}
    = ListControlDisplayOptionsProperty
        {selectAllOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" ListControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" ListControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue ListControlDisplayOptionsProperty {..}
    = ListControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}