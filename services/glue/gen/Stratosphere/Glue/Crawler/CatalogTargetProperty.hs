module Stratosphere.Glue.Crawler.CatalogTargetProperty (
        CatalogTargetProperty(..), mkCatalogTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CatalogTargetProperty
  = CatalogTargetProperty {databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                           tables :: (Prelude.Maybe (ValueList Prelude.Text))}
mkCatalogTargetProperty :: CatalogTargetProperty
mkCatalogTargetProperty
  = CatalogTargetProperty
      {databaseName = Prelude.Nothing, tables = Prelude.Nothing}
instance ToResourceProperties CatalogTargetProperty where
  toResourceProperties CatalogTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.CatalogTarget",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Tables" Prelude.<$> tables])}
instance JSON.ToJSON CatalogTargetProperty where
  toJSON CatalogTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Tables" Prelude.<$> tables]))
instance Property "DatabaseName" CatalogTargetProperty where
  type PropertyType "DatabaseName" CatalogTargetProperty = Value Prelude.Text
  set newValue CatalogTargetProperty {..}
    = CatalogTargetProperty {databaseName = Prelude.pure newValue, ..}
instance Property "Tables" CatalogTargetProperty where
  type PropertyType "Tables" CatalogTargetProperty = ValueList Prelude.Text
  set newValue CatalogTargetProperty {..}
    = CatalogTargetProperty {tables = Prelude.pure newValue, ..}