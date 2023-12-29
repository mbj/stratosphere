module Stratosphere.LakeFormation.Permissions.DatabaseResourceProperty (
        DatabaseResourceProperty(..), mkDatabaseResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseResourceProperty
  = DatabaseResourceProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                              name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseResourceProperty :: DatabaseResourceProperty
mkDatabaseResourceProperty
  = DatabaseResourceProperty
      {catalogId = Prelude.Nothing, name = Prelude.Nothing}
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