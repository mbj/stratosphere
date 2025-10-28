module Stratosphere.Kendra.Index.SearchProperty (
        SearchProperty(..), mkSearchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SearchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html>
    SearchProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-displayable>
                    displayable :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-facetable>
                    facetable :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-searchable>
                    searchable :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-sortable>
                    sortable :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSearchProperty :: SearchProperty
mkSearchProperty
  = SearchProperty
      {haddock_workaround_ = (), displayable = Prelude.Nothing,
       facetable = Prelude.Nothing, searchable = Prelude.Nothing,
       sortable = Prelude.Nothing}
instance ToResourceProperties SearchProperty where
  toResourceProperties SearchProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.Search",
         supportsTags = Prelude.False,
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