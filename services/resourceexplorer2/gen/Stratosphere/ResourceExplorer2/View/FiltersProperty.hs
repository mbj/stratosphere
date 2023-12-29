module Stratosphere.ResourceExplorer2.View.FiltersProperty (
        FiltersProperty(..), mkFiltersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FiltersProperty
  = FiltersProperty {filterString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFiltersProperty :: Value Prelude.Text -> FiltersProperty
mkFiltersProperty filterString
  = FiltersProperty {filterString = filterString}
instance ToResourceProperties FiltersProperty where
  toResourceProperties FiltersProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceExplorer2::View.Filters",
         supportsTags = Prelude.False,
         properties = ["FilterString" JSON..= filterString]}
instance JSON.ToJSON FiltersProperty where
  toJSON FiltersProperty {..}
    = JSON.object ["FilterString" JSON..= filterString]
instance Property "FilterString" FiltersProperty where
  type PropertyType "FilterString" FiltersProperty = Value Prelude.Text
  set newValue FiltersProperty {}
    = FiltersProperty {filterString = newValue, ..}