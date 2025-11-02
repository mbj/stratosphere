module Stratosphere.Glue.Database.DatabaseIdentifierProperty (
        DatabaseIdentifierProperty(..), mkDatabaseIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseIdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseidentifier.html>
    DatabaseIdentifierProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseidentifier.html#cfn-glue-database-databaseidentifier-catalogid>
                                catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseidentifier.html#cfn-glue-database-databaseidentifier-databasename>
                                databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseidentifier.html#cfn-glue-database-databaseidentifier-region>
                                region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseIdentifierProperty :: DatabaseIdentifierProperty
mkDatabaseIdentifierProperty
  = DatabaseIdentifierProperty
      {haddock_workaround_ = (), catalogId = Prelude.Nothing,
       databaseName = Prelude.Nothing, region = Prelude.Nothing}
instance ToResourceProperties DatabaseIdentifierProperty where
  toResourceProperties DatabaseIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database.DatabaseIdentifier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON DatabaseIdentifierProperty where
  toJSON DatabaseIdentifierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Region" Prelude.<$> region]))
instance Property "CatalogId" DatabaseIdentifierProperty where
  type PropertyType "CatalogId" DatabaseIdentifierProperty = Value Prelude.Text
  set newValue DatabaseIdentifierProperty {..}
    = DatabaseIdentifierProperty
        {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" DatabaseIdentifierProperty where
  type PropertyType "DatabaseName" DatabaseIdentifierProperty = Value Prelude.Text
  set newValue DatabaseIdentifierProperty {..}
    = DatabaseIdentifierProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Region" DatabaseIdentifierProperty where
  type PropertyType "Region" DatabaseIdentifierProperty = Value Prelude.Text
  set newValue DatabaseIdentifierProperty {..}
    = DatabaseIdentifierProperty {region = Prelude.pure newValue, ..}