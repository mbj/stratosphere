module Stratosphere.Athena.PreparedStatement (
        PreparedStatement(..), mkPreparedStatement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PreparedStatement
  = PreparedStatement {description :: (Prelude.Maybe (Value Prelude.Text)),
                       queryStatement :: (Value Prelude.Text),
                       statementName :: (Value Prelude.Text),
                       workGroup :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPreparedStatement ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PreparedStatement
mkPreparedStatement queryStatement statementName workGroup
  = PreparedStatement
      {queryStatement = queryStatement, statementName = statementName,
       workGroup = workGroup, description = Prelude.Nothing}
instance ToResourceProperties PreparedStatement where
  toResourceProperties PreparedStatement {..}
    = ResourceProperties
        {awsType = "AWS::Athena::PreparedStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryStatement" JSON..= queryStatement,
                            "StatementName" JSON..= statementName,
                            "WorkGroup" JSON..= workGroup]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON PreparedStatement where
  toJSON PreparedStatement {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryStatement" JSON..= queryStatement,
               "StatementName" JSON..= statementName,
               "WorkGroup" JSON..= workGroup]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" PreparedStatement where
  type PropertyType "Description" PreparedStatement = Value Prelude.Text
  set newValue PreparedStatement {..}
    = PreparedStatement {description = Prelude.pure newValue, ..}
instance Property "QueryStatement" PreparedStatement where
  type PropertyType "QueryStatement" PreparedStatement = Value Prelude.Text
  set newValue PreparedStatement {..}
    = PreparedStatement {queryStatement = newValue, ..}
instance Property "StatementName" PreparedStatement where
  type PropertyType "StatementName" PreparedStatement = Value Prelude.Text
  set newValue PreparedStatement {..}
    = PreparedStatement {statementName = newValue, ..}
instance Property "WorkGroup" PreparedStatement where
  type PropertyType "WorkGroup" PreparedStatement = Value Prelude.Text
  set newValue PreparedStatement {..}
    = PreparedStatement {workGroup = newValue, ..}