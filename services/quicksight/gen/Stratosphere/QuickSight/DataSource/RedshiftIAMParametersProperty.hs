module Stratosphere.QuickSight.DataSource.RedshiftIAMParametersProperty (
        RedshiftIAMParametersProperty(..), mkRedshiftIAMParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftIAMParametersProperty
  = RedshiftIAMParametersProperty {autoCreateDatabaseUser :: (Prelude.Maybe (Value Prelude.Bool)),
                                   databaseGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   databaseUser :: (Prelude.Maybe (Value Prelude.Text)),
                                   roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftIAMParametersProperty ::
  Value Prelude.Text -> RedshiftIAMParametersProperty
mkRedshiftIAMParametersProperty roleArn
  = RedshiftIAMParametersProperty
      {roleArn = roleArn, autoCreateDatabaseUser = Prelude.Nothing,
       databaseGroups = Prelude.Nothing, databaseUser = Prelude.Nothing}
instance ToResourceProperties RedshiftIAMParametersProperty where
  toResourceProperties RedshiftIAMParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.RedshiftIAMParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoCreateDatabaseUser"
                                 Prelude.<$> autoCreateDatabaseUser,
                               (JSON..=) "DatabaseGroups" Prelude.<$> databaseGroups,
                               (JSON..=) "DatabaseUser" Prelude.<$> databaseUser]))}
instance JSON.ToJSON RedshiftIAMParametersProperty where
  toJSON RedshiftIAMParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AutoCreateDatabaseUser"
                    Prelude.<$> autoCreateDatabaseUser,
                  (JSON..=) "DatabaseGroups" Prelude.<$> databaseGroups,
                  (JSON..=) "DatabaseUser" Prelude.<$> databaseUser])))
instance Property "AutoCreateDatabaseUser" RedshiftIAMParametersProperty where
  type PropertyType "AutoCreateDatabaseUser" RedshiftIAMParametersProperty = Value Prelude.Bool
  set newValue RedshiftIAMParametersProperty {..}
    = RedshiftIAMParametersProperty
        {autoCreateDatabaseUser = Prelude.pure newValue, ..}
instance Property "DatabaseGroups" RedshiftIAMParametersProperty where
  type PropertyType "DatabaseGroups" RedshiftIAMParametersProperty = ValueList Prelude.Text
  set newValue RedshiftIAMParametersProperty {..}
    = RedshiftIAMParametersProperty
        {databaseGroups = Prelude.pure newValue, ..}
instance Property "DatabaseUser" RedshiftIAMParametersProperty where
  type PropertyType "DatabaseUser" RedshiftIAMParametersProperty = Value Prelude.Text
  set newValue RedshiftIAMParametersProperty {..}
    = RedshiftIAMParametersProperty
        {databaseUser = Prelude.pure newValue, ..}
instance Property "RoleArn" RedshiftIAMParametersProperty where
  type PropertyType "RoleArn" RedshiftIAMParametersProperty = Value Prelude.Text
  set newValue RedshiftIAMParametersProperty {..}
    = RedshiftIAMParametersProperty {roleArn = newValue, ..}