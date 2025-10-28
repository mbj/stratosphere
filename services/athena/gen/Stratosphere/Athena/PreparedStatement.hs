module Stratosphere.Athena.PreparedStatement (
        PreparedStatement(..), mkPreparedStatement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PreparedStatement
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-preparedstatement.html>
    PreparedStatement {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-preparedstatement.html#cfn-athena-preparedstatement-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-preparedstatement.html#cfn-athena-preparedstatement-querystatement>
                       queryStatement :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-preparedstatement.html#cfn-athena-preparedstatement-statementname>
                       statementName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-preparedstatement.html#cfn-athena-preparedstatement-workgroup>
                       workGroup :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPreparedStatement ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PreparedStatement
mkPreparedStatement queryStatement statementName workGroup
  = PreparedStatement
      {haddock_workaround_ = (), queryStatement = queryStatement,
       statementName = statementName, workGroup = workGroup,
       description = Prelude.Nothing}
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