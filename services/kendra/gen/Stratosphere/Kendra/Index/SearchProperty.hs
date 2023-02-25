module Stratosphere.Kendra.Index.SearchProperty (
        SearchProperty(..), mkSearchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SearchProperty
  = SearchProperty {displayable :: (Prelude.Maybe (Value Prelude.Bool)),
                    facetable :: (Prelude.Maybe (Value Prelude.Bool)),
                    searchable :: (Prelude.Maybe (Value Prelude.Bool)),
                    sortable :: (Prelude.Maybe (Value Prelude.Bool))}
mkSearchProperty :: SearchProperty
mkSearchProperty
  = SearchProperty
      {displayable = Prelude.Nothing, facetable = Prelude.Nothing,
       searchable = Prelude.Nothing, sortable = Prelude.Nothing}
instance ToResourceProperties SearchProperty where
  toResourceProperties SearchProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.Search",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Displayable" Prelude.<$> displayable,
                            (JSON..=) "Facetable" Prelude.<$> facetable,
                            (JSON..=) "Searchable" Prelude.<$> searchable,
                            (JSON..=) "Sortable" Prelude.<$> sortable])}
instance JSON.ToJSON SearchProperty where
  toJSON SearchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Displayable" Prelude.<$> displayable,
               (JSON..=) "Facetable" Prelude.<$> facetable,
               (JSON..=) "Searchable" Prelude.<$> searchable,
               (JSON..=) "Sortable" Prelude.<$> sortable]))
instance Property "Displayable" SearchProperty where
  type PropertyType "Displayable" SearchProperty = Value Prelude.Bool
  set newValue SearchProperty {..}
    = SearchProperty {displayable = Prelude.pure newValue, ..}
instance Property "Facetable" SearchProperty where
  type PropertyType "Facetable" SearchProperty = Value Prelude.Bool
  set newValue SearchProperty {..}
    = SearchProperty {facetable = Prelude.pure newValue, ..}
instance Property "Searchable" SearchProperty where
  type PropertyType "Searchable" SearchProperty = Value Prelude.Bool
  set newValue SearchProperty {..}
    = SearchProperty {searchable = Prelude.pure newValue, ..}
instance Property "Sortable" SearchProperty where
  type PropertyType "Sortable" SearchProperty = Value Prelude.Bool
  set newValue SearchProperty {..}
    = SearchProperty {sortable = Prelude.pure newValue, ..}