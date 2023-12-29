module Stratosphere.Events.Rule.RedshiftDataParametersProperty (
        RedshiftDataParametersProperty(..),
        mkRedshiftDataParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftDataParametersProperty
  = RedshiftDataParametersProperty {database :: (Value Prelude.Text),
                                    dbUser :: (Prelude.Maybe (Value Prelude.Text)),
                                    secretManagerArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    sql :: (Value Prelude.Text),
                                    statementName :: (Prelude.Maybe (Value Prelude.Text)),
                                    withEvent :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftDataParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RedshiftDataParametersProperty
mkRedshiftDataParametersProperty database sql
  = RedshiftDataParametersProperty
      {database = database, sql = sql, dbUser = Prelude.Nothing,
       secretManagerArn = Prelude.Nothing,
       statementName = Prelude.Nothing, withEvent = Prelude.Nothing}
instance ToResourceProperties RedshiftDataParametersProperty where
  toResourceProperties RedshiftDataParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.RedshiftDataParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Database" JSON..= database, "Sql" JSON..= sql]
                           (Prelude.catMaybes
                              [(JSON..=) "DbUser" Prelude.<$> dbUser,
                               (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                               (JSON..=) "StatementName" Prelude.<$> statementName,
                               (JSON..=) "WithEvent" Prelude.<$> withEvent]))}
instance JSON.ToJSON RedshiftDataParametersProperty where
  toJSON RedshiftDataParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Database" JSON..= database, "Sql" JSON..= sql]
              (Prelude.catMaybes
                 [(JSON..=) "DbUser" Prelude.<$> dbUser,
                  (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                  (JSON..=) "StatementName" Prelude.<$> statementName,
                  (JSON..=) "WithEvent" Prelude.<$> withEvent])))
instance Property "Database" RedshiftDataParametersProperty where
  type PropertyType "Database" RedshiftDataParametersProperty = Value Prelude.Text
  set newValue RedshiftDataParametersProperty {..}
    = RedshiftDataParametersProperty {database = newValue, ..}
instance Property "DbUser" RedshiftDataParametersProperty where
  type PropertyType "DbUser" RedshiftDataParametersProperty = Value Prelude.Text
  set newValue RedshiftDataParametersProperty {..}
    = RedshiftDataParametersProperty
        {dbUser = Prelude.pure newValue, ..}
instance Property "SecretManagerArn" RedshiftDataParametersProperty where
  type PropertyType "SecretManagerArn" RedshiftDataParametersProperty = Value Prelude.Text
  set newValue RedshiftDataParametersProperty {..}
    = RedshiftDataParametersProperty
        {secretManagerArn = Prelude.pure newValue, ..}
instance Property "Sql" RedshiftDataParametersProperty where
  type PropertyType "Sql" RedshiftDataParametersProperty = Value Prelude.Text
  set newValue RedshiftDataParametersProperty {..}
    = RedshiftDataParametersProperty {sql = newValue, ..}
instance Property "StatementName" RedshiftDataParametersProperty where
  type PropertyType "StatementName" RedshiftDataParametersProperty = Value Prelude.Text
  set newValue RedshiftDataParametersProperty {..}
    = RedshiftDataParametersProperty
        {statementName = Prelude.pure newValue, ..}
instance Property "WithEvent" RedshiftDataParametersProperty where
  type PropertyType "WithEvent" RedshiftDataParametersProperty = Value Prelude.Bool
  set newValue RedshiftDataParametersProperty {..}
    = RedshiftDataParametersProperty
        {withEvent = Prelude.pure newValue, ..}