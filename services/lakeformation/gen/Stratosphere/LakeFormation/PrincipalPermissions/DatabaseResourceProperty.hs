module Stratosphere.LakeFormation.PrincipalPermissions.DatabaseResourceProperty (
        DatabaseResourceProperty(..), mkDatabaseResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-databaseresource.html>
    DatabaseResourceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-databaseresource.html#cfn-lakeformation-principalpermissions-databaseresource-catalogid>
                              catalogId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-databaseresource.html#cfn-lakeformation-principalpermissions-databaseresource-name>
                              name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseResourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DatabaseResourceProperty
mkDatabaseResourceProperty catalogId name
  = DatabaseResourceProperty
      {haddock_workaround_ = (), catalogId = catalogId, name = name}
instance ToResourceProperties DatabaseResourceProperty where
  toResourceProperties DatabaseResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.DatabaseResource",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId, "Name" JSON..= name]}
instance JSON.ToJSON DatabaseResourceProperty where
  toJSON DatabaseResourceProperty {..}
    = JSON.object ["CatalogId" JSON..= catalogId, "Name" JSON..= name]
instance Property "CatalogId" DatabaseResourceProperty where
  type PropertyType "CatalogId" DatabaseResourceProperty = Value Prelude.Text
  set newValue DatabaseResourceProperty {..}
    = DatabaseResourceProperty {catalogId = newValue, ..}
instance Property "Name" DatabaseResourceProperty where
  type PropertyType "Name" DatabaseResourceProperty = Value Prelude.Text
  set newValue DatabaseResourceProperty {..}
    = DatabaseResourceProperty {name = newValue, ..}