module Stratosphere.Glue.Crawler.CatalogTargetProperty (
        CatalogTargetProperty(..), mkCatalogTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CatalogTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html>
    CatalogTargetProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-connectionname>
                           connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-databasename>
                           databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-dlqeventqueuearn>
                           dlqEventQueueArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-eventqueuearn>
                           eventQueueArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-tables>
                           tables :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCatalogTargetProperty :: CatalogTargetProperty
mkCatalogTargetProperty
  = CatalogTargetProperty
      {haddock_workaround_ = (), connectionName = Prelude.Nothing,
       databaseName = Prelude.Nothing, dlqEventQueueArn = Prelude.Nothing,
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