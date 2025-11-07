module Stratosphere.QuickSight.Dashboard.TableFieldOptionsProperty (
        module Exports, TableFieldOptionsProperty(..),
        mkTableFieldOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableFieldOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TablePinnedFieldOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TransposedTableOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablefieldoptions.html>
    TableFieldOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablefieldoptions.html#cfn-quicksight-dashboard-tablefieldoptions-order>
                               order :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablefieldoptions.html#cfn-quicksight-dashboard-tablefieldoptions-pinnedfieldoptions>
                               pinnedFieldOptions :: (Prelude.Maybe TablePinnedFieldOptionsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablefieldoptions.html#cfn-quicksight-dashboard-tablefieldoptions-selectedfieldoptions>
                               selectedFieldOptions :: (Prelude.Maybe [TableFieldOptionProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tablefieldoptions.html#cfn-quicksight-dashboard-tablefieldoptions-transposedtableoptions>
                               transposedTableOptions :: (Prelude.Maybe [TransposedTableOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldOptionsProperty :: TableFieldOptionsProperty
mkTableFieldOptionsProperty
  = TableFieldOptionsProperty
      {haddock_workaround_ = (), order = Prelude.Nothing,
       pinnedFieldOptions = Prelude.Nothing,
       selectedFieldOptions = Prelude.Nothing,
       transposedTableOptions = Prelude.Nothing}
instance ToResourceProperties TableFieldOptionsProperty where
  toResourceProperties TableFieldOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableFieldOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Order" Prelude.<$> order,
                            (JSON..=) "PinnedFieldOptions" Prelude.<$> pinnedFieldOptions,
                            (JSON..=) "SelectedFieldOptions" Prelude.<$> selectedFieldOptions,
                            (JSON..=) "TransposedTableOptions"
                              Prelude.<$> transposedTableOptions])}
instance JSON.ToJSON TableFieldOptionsProperty where
  toJSON TableFieldOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Order" Prelude.<$> order,
               (JSON..=) "PinnedFieldOptions" Prelude.<$> pinnedFieldOptions,
               (JSON..=) "SelectedFieldOptions" Prelude.<$> selectedFieldOptions,
               (JSON..=) "TransposedTableOptions"
                 Prelude.<$> transposedTableOptions]))
instance Property "Order" TableFieldOptionsProperty where
  type PropertyType "Order" TableFieldOptionsProperty = ValueList Prelude.Text
  set newValue TableFieldOptionsProperty {..}
    = TableFieldOptionsProperty {order = Prelude.pure newValue, ..}
instance Property "PinnedFieldOptions" TableFieldOptionsProperty where
  type PropertyType "PinnedFieldOptions" TableFieldOptionsProperty = TablePinnedFieldOptionsProperty
  set newValue TableFieldOptionsProperty {..}
    = TableFieldOptionsProperty
        {pinnedFieldOptions = Prelude.pure newValue, ..}
instance Property "SelectedFieldOptions" TableFieldOptionsProperty where
  type PropertyType "SelectedFieldOptions" TableFieldOptionsProperty = [TableFieldOptionProperty]
  set newValue TableFieldOptionsProperty {..}
    = TableFieldOptionsProperty
        {selectedFieldOptions = Prelude.pure newValue, ..}
instance Property "TransposedTableOptions" TableFieldOptionsProperty where
  type PropertyType "TransposedTableOptions" TableFieldOptionsProperty = [TransposedTableOptionProperty]
  set newValue TableFieldOptionsProperty {..}
    = TableFieldOptionsProperty
        {transposedTableOptions = Prelude.pure newValue, ..}