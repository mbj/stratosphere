module Stratosphere.QuickSight.Analysis.DropDownControlDisplayOptionsProperty (
        module Exports, DropDownControlDisplayOptionsProperty(..),
        mkDropDownControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlSelectAllOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DropDownControlDisplayOptionsProperty
  = DropDownControlDisplayOptionsProperty {selectAllOptions :: (Prelude.Maybe ListControlSelectAllOptionsProperty),
                                           titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDropDownControlDisplayOptionsProperty ::
  DropDownControlDisplayOptionsProperty
mkDropDownControlDisplayOptionsProperty
  = DropDownControlDisplayOptionsProperty
      {selectAllOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties DropDownControlDisplayOptionsProperty where
  toResourceProperties DropDownControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DropDownControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON DropDownControlDisplayOptionsProperty where
  toJSON DropDownControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "SelectAllOptions" DropDownControlDisplayOptionsProperty where
  type PropertyType "SelectAllOptions" DropDownControlDisplayOptionsProperty = ListControlSelectAllOptionsProperty
  set newValue DropDownControlDisplayOptionsProperty {..}
    = DropDownControlDisplayOptionsProperty
        {selectAllOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" DropDownControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" DropDownControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue DropDownControlDisplayOptionsProperty {..}
    = DropDownControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}