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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-storedquery.html>
    StoredQuery {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-storedquery.html#cfn-config-storedquery-querydescription>
                 queryDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-storedquery.html#cfn-config-storedquery-queryexpression>
                 queryExpression :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-storedquery.html#cfn-config-storedquery-queryname>
                 queryName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-storedquery.html#cfn-config-storedquery-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStoredQuery ::
  Value Prelude.Text -> Value Prelude.Text -> StoredQuery
mkStoredQuery queryExpression queryName
  = StoredQuery
      {haddock_workaround_ = (), queryExpression = queryExpression,
       queryName = queryName, queryDescription = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties StoredQuery where
  toResourceProperties StoredQuery {..}
    = ResourceProperties
        {awsType = "AWS::Config::StoredQuery", supportsTags = Prelude.True,
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