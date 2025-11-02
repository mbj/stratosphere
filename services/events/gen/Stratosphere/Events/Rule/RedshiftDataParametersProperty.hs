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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html>
    RedshiftDataParametersProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html#cfn-events-rule-redshiftdataparameters-database>
                                    database :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html#cfn-events-rule-redshiftdataparameters-dbuser>
                                    dbUser :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html#cfn-events-rule-redshiftdataparameters-secretmanagerarn>
                                    secretManagerArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html#cfn-events-rule-redshiftdataparameters-sql>
                                    sql :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html#cfn-events-rule-redshiftdataparameters-sqls>
                                    sqls :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html#cfn-events-rule-redshiftdataparameters-statementname>
                                    statementName :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-redshiftdataparameters.html#cfn-events-rule-redshiftdataparameters-withevent>
                                    withEvent :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftDataParametersProperty ::
  Value Prelude.Text -> RedshiftDataParametersProperty
mkRedshiftDataParametersProperty database
  = RedshiftDataParametersProperty
      {haddock_workaround_ = (), database = database,
       dbUser = Prelude.Nothing, secretManagerArn = Prelude.Nothing,
       sql = Prelude.Nothing, sqls = Prelude.Nothing,
       statementName = Prelude.Nothing, withEvent = Prelude.Nothing}
instance ToResourceProperties RedshiftDataParametersProperty where
  toResourceProperties RedshiftDataParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.RedshiftDataParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Database" JSON..= database]
                           (Prelude.catMaybes
                              [(JSON..=) "DbUser" Prelude.<$> dbUser,
                               (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                               (JSON..=) "Sql" Prelude.<$> sql, (JSON..=) "Sqls" Prelude.<$> sqls,
                               (JSON..=) "StatementName" Prelude.<$> statementName,
                               (JSON..=) "WithEvent" Prelude.<$> withEvent]))}
instance JSON.ToJSON RedshiftDataParametersProperty where
  toJSON RedshiftDataParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Database" JSON..= database]
              (Prelude.catMaybes
                 [(JSON..=) "DbUser" Prelude.<$> dbUser,
                  (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                  (JSON..=) "Sql" Prelude.<$> sql, (JSON..=) "Sqls" Prelude.<$> sqls,
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
    = RedshiftDataParametersProperty {sql = Prelude.pure newValue, ..}
instance Property "Sqls" RedshiftDataParametersProperty where
  type PropertyType "Sqls" RedshiftDataParametersProperty = ValueList Prelude.Text
  set newValue RedshiftDataParametersProperty {..}
    = RedshiftDataParametersProperty {sqls = Prelude.pure newValue, ..}
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