module Stratosphere.LakeFormation.PrincipalPermissions.ColumnWildcardProperty (
        ColumnWildcardProperty(..), mkColumnWildcardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnWildcardProperty
  = ColumnWildcardProperty {excludedColumnNames :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkColumnWildcardProperty :: ColumnWildcardProperty
mkColumnWildcardProperty
  = ColumnWildcardProperty {excludedColumnNames = Prelude.Nothing}
instance ToResourceProperties ColumnWildcardProperty where
  toResourceProperties ColumnWildcardProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.ColumnWildcard",
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
  type PropertyType "ExcludedColumnNames" ColumnWildcardProperty = ValueList (Value Prelude.Text)
  set newValue ColumnWildcardProperty {}
    = ColumnWildcardProperty
        {excludedColumnNames = Prelude.pure newValue, ..}