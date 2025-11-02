module Stratosphere.Athena.NamedQuery (
        NamedQuery(..), mkNamedQuery
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamedQuery
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html>
    NamedQuery {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-database>
                database :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-name>
                name :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-querystring>
                queryString :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-workgroup>
                workGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamedQuery ::
  Value Prelude.Text -> Value Prelude.Text -> NamedQuery
mkNamedQuery database queryString
  = NamedQuery
      {haddock_workaround_ = (), database = database,
       queryString = queryString, description = Prelude.Nothing,
       name = Prelude.Nothing, workGroup = Prelude.Nothing}
instance ToResourceProperties NamedQuery where
  toResourceProperties NamedQuery {..}
    = ResourceProperties
        {awsType = "AWS::Athena::NamedQuery", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Database" JSON..= database, "QueryString" JSON..= queryString]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "WorkGroup" Prelude.<$> workGroup]))}
instance JSON.ToJSON NamedQuery where
  toJSON NamedQuery {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Database" JSON..= database, "QueryString" JSON..= queryString]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "WorkGroup" Prelude.<$> workGroup])))
instance Property "Database" NamedQuery where
  type PropertyType "Database" NamedQuery = Value Prelude.Text
  set newValue NamedQuery {..} = NamedQuery {database = newValue, ..}
instance Property "Description" NamedQuery where
  type PropertyType "Description" NamedQuery = Value Prelude.Text
  set newValue NamedQuery {..}
    = NamedQuery {description = Prelude.pure newValue, ..}
instance Property "Name" NamedQuery where
  type PropertyType "Name" NamedQuery = Value Prelude.Text
  set newValue NamedQuery {..}
    = NamedQuery {name = Prelude.pure newValue, ..}
instance Property "QueryString" NamedQuery where
  type PropertyType "QueryString" NamedQuery = Value Prelude.Text
  set newValue NamedQuery {..}
    = NamedQuery {queryString = newValue, ..}
instance Property "WorkGroup" NamedQuery where
  type PropertyType "WorkGroup" NamedQuery = Value Prelude.Text
  set newValue NamedQuery {..}
    = NamedQuery {workGroup = Prelude.pure newValue, ..}