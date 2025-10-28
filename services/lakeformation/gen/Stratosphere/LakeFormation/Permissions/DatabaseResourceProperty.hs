module Stratosphere.LakeFormation.Permissions.DatabaseResourceProperty (
        DatabaseResourceProperty(..), mkDatabaseResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-databaseresource.html>
    DatabaseResourceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-databaseresource.html#cfn-lakeformation-permissions-databaseresource-catalogid>
                              catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-databaseresource.html#cfn-lakeformation-permissions-databaseresource-name>
                              name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseResourceProperty :: DatabaseResourceProperty
mkDatabaseResourceProperty
  = DatabaseResourceProperty
      {haddock_workaround_ = (), catalogId = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties DatabaseResourceProperty where
  toResourceProperties DatabaseResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.DatabaseResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON DatabaseResourceProperty where
  toJSON DatabaseResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "CatalogId" DatabaseResourceProperty where
  type PropertyType "CatalogId" DatabaseResourceProperty = Value Prelude.Text
  set newValue DatabaseResourceProperty {..}
    = DatabaseResourceProperty {catalogId = Prelude.pure newValue, ..}
instance Property "Name" DatabaseResourceProperty where
  type PropertyType "Name" DatabaseResourceProperty = Value Prelude.Text
  set newValue DatabaseResourceProperty {..}
    = DatabaseResourceProperty {name = Prelude.pure newValue, ..}