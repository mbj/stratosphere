module Stratosphere.QuickSight.Template.TableFieldOptionsProperty (
        module Exports, TableFieldOptionsProperty(..),
        mkTableFieldOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableFieldOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldOptionsProperty
  = TableFieldOptionsProperty {order :: (Prelude.Maybe (ValueList Prelude.Text)),
                               selectedFieldOptions :: (Prelude.Maybe [TableFieldOptionProperty])}
mkTableFieldOptionsProperty :: TableFieldOptionsProperty
mkTableFieldOptionsProperty
  = TableFieldOptionsProperty
      {order = Prelude.Nothing, selectedFieldOptions = Prelude.Nothing}
instance ToResourceProperties TableFieldOptionsProperty where
  toResourceProperties TableFieldOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableFieldOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Order" Prelude.<$> order,
                            (JSON..=) "SelectedFieldOptions"
                              Prelude.<$> selectedFieldOptions])}
instance JSON.ToJSON TableFieldOptionsProperty where
  toJSON TableFieldOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Order" Prelude.<$> order,
               (JSON..=) "SelectedFieldOptions"
                 Prelude.<$> selectedFieldOptions]))
instance Property "Order" TableFieldOptionsProperty where
  type PropertyType "Order" TableFieldOptionsProperty = ValueList Prelude.Text
  set newValue TableFieldOptionsProperty {..}
    = TableFieldOptionsProperty {order = Prelude.pure newValue, ..}
instance Property "SelectedFieldOptions" TableFieldOptionsProperty where
  type PropertyType "SelectedFieldOptions" TableFieldOptionsProperty = [TableFieldOptionProperty]
  set newValue TableFieldOptionsProperty {..}
    = TableFieldOptionsProperty
        {selectedFieldOptions = Prelude.pure newValue, ..}