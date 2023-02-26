module Stratosphere.LakeFormation.DataCellsFilter.ColumnWildcardProperty (
        ColumnWildcardProperty(..), mkColumnWildcardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnWildcardProperty
  = ColumnWildcardProperty {excludedColumnNames :: (Prelude.Maybe (ValueList Prelude.Text))}
mkColumnWildcardProperty :: ColumnWildcardProperty
mkColumnWildcardProperty
  = ColumnWildcardProperty {excludedColumnNames = Prelude.Nothing}
instance ToResourceProperties ColumnWildcardProperty where
  toResourceProperties ColumnWildcardProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataCellsFilter.ColumnWildcard",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludedColumnNames" Prelude.<$> excludedColumnNames])}
instance JSON.ToJSON ColumnWildcardProperty where
  toJSON ColumnWildcardProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludedColumnNames" Prelude.<$> excludedColumnNames]))
instance Property "ExcludedColumnNames" ColumnWildcardProperty where
  type PropertyType "ExcludedColumnNames" ColumnWildcardProperty = ValueList Prelude.Text
  set newValue ColumnWildcardProperty {}
    = ColumnWildcardProperty
        {excludedColumnNames = Prelude.pure newValue, ..}