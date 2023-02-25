module Stratosphere.Config.StoredQuery (
        StoredQuery(..), mkStoredQuery
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StoredQuery
  = StoredQuery {queryDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 queryExpression :: (Value Prelude.Text),
                 queryName :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
mkStoredQuery ::
  Value Prelude.Text -> Value Prelude.Text -> StoredQuery
mkStoredQuery queryExpression queryName
  = StoredQuery
      {queryExpression = queryExpression, queryName = queryName,
       queryDescription = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties StoredQuery where
  toResourceProperties StoredQuery {..}
    = ResourceProperties
        {awsType = "AWS::Config::StoredQuery",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryExpression" JSON..= queryExpression,
                            "QueryName" JSON..= queryName]
                           (Prelude.catMaybes
                              [(JSON..=) "QueryDescription" Prelude.<$> queryDescription,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StoredQuery where
  toJSON StoredQuery {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryExpression" JSON..= queryExpression,
               "QueryName" JSON..= queryName]
              (Prelude.catMaybes
                 [(JSON..=) "QueryDescription" Prelude.<$> queryDescription,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "QueryDescription" StoredQuery where
  type PropertyType "QueryDescription" StoredQuery = Value Prelude.Text
  set newValue StoredQuery {..}
    = StoredQuery {queryDescription = Prelude.pure newValue, ..}
instance Property "QueryExpression" StoredQuery where
  type PropertyType "QueryExpression" StoredQuery = Value Prelude.Text
  set newValue StoredQuery {..}
    = StoredQuery {queryExpression = newValue, ..}
instance Property "QueryName" StoredQuery where
  type PropertyType "QueryName" StoredQuery = Value Prelude.Text
  set newValue StoredQuery {..}
    = StoredQuery {queryName = newValue, ..}
instance Property "Tags" StoredQuery where
  type PropertyType "Tags" StoredQuery = [Tag]
  set newValue StoredQuery {..}
    = StoredQuery {tags = Prelude.pure newValue, ..}