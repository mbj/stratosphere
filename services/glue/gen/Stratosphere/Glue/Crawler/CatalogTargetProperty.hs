module Stratosphere.Glue.Crawler.CatalogTargetProperty (
        CatalogTargetProperty(..), mkCatalogTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CatalogTargetProperty
  = CatalogTargetProperty {connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                           databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                           dlqEventQueueArn :: (Prelude.Maybe (Value Prelude.Text)),
                           eventQueueArn :: (Prelude.Maybe (Value Prelude.Text)),
                           tables :: (Prelude.Maybe (ValueList Prelude.Text))}
mkCatalogTargetProperty :: CatalogTargetProperty
mkCatalogTargetProperty
  = CatalogTargetProperty
      {connectionName = Prelude.Nothing, databaseName = Prelude.Nothing,
       dlqEventQueueArn = Prelude.Nothing,
       eventQueueArn = Prelude.Nothing, tables = Prelude.Nothing}
instance ToResourceProperties CatalogTargetProperty where
  toResourceProperties CatalogTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.CatalogTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "DlqEventQueueArn" Prelude.<$> dlqEventQueueArn,
                            (JSON..=) "EventQueueArn" Prelude.<$> eventQueueArn,
                            (JSON..=) "Tables" Prelude.<$> tables])}
instance JSON.ToJSON CatalogTargetProperty where
  toJSON CatalogTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "DlqEventQueueArn" Prelude.<$> dlqEventQueueArn,
               (JSON..=) "EventQueueArn" Prelude.<$> eventQueueArn,
               (JSON..=) "Tables" Prelude.<$> tables]))
instance Property "ConnectionName" CatalogTargetProperty where
  type PropertyType "ConnectionName" CatalogTargetProperty = Value Prelude.Text
  set newValue CatalogTargetProperty {..}
    = CatalogTargetProperty
        {connectionName = Prelude.pure newValue, ..}
instance Property "DatabaseName" CatalogTargetProperty where
  type PropertyType "DatabaseName" CatalogTargetProperty = Value Prelude.Text
  set newValue CatalogTargetProperty {..}
    = CatalogTargetProperty {databaseName = Prelude.pure newValue, ..}
instance Property "DlqEventQueueArn" CatalogTargetProperty where
  type PropertyType "DlqEventQueueArn" CatalogTargetProperty = Value Prelude.Text
  set newValue CatalogTargetProperty {..}
    = CatalogTargetProperty
        {dlqEventQueueArn = Prelude.pure newValue, ..}
instance Property "EventQueueArn" CatalogTargetProperty where
  type PropertyType "EventQueueArn" CatalogTargetProperty = Value Prelude.Text
  set newValue CatalogTargetProperty {..}
    = CatalogTargetProperty {eventQueueArn = Prelude.pure newValue, ..}
instance Property "Tables" CatalogTargetProperty where
  type PropertyType "Tables" CatalogTargetProperty = ValueList Prelude.Text
  set newValue CatalogTargetProperty {..}
    = CatalogTargetProperty {tables = Prelude.pure newValue, ..}