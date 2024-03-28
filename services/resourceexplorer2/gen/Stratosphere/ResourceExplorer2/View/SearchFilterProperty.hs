module Stratosphere.ResourceExplorer2.View.SearchFilterProperty (
        SearchFilterProperty(..), mkSearchFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SearchFilterProperty
  = SearchFilterProperty {filterString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSearchFilterProperty ::
  Value Prelude.Text -> SearchFilterProperty
mkSearchFilterProperty filterString
  = SearchFilterProperty {filterString = filterString}
instance ToResourceProperties SearchFilterProperty where
  toResourceProperties SearchFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceExplorer2::View.SearchFilter",
         supportsTags = Prelude.False,
         properties = ["FilterString" JSON..= filterString]}
instance JSON.ToJSON SearchFilterProperty where
  toJSON SearchFilterProperty {..}
    = JSON.object ["FilterString" JSON..= filterString]
instance Property "FilterString" SearchFilterProperty where
  type PropertyType "FilterString" SearchFilterProperty = Value Prelude.Text
  set newValue SearchFilterProperty {}
    = SearchFilterProperty {filterString = newValue, ..}