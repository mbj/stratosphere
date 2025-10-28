module Stratosphere.KinesisFirehose.DeliveryStream.DatabaseTablesProperty (
        DatabaseTablesProperty(..), mkDatabaseTablesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseTablesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasetables.html>
    DatabaseTablesProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasetables.html#cfn-kinesisfirehose-deliverystream-databasetables-exclude>
                            exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasetables.html#cfn-kinesisfirehose-deliverystream-databasetables-include>
                            include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseTablesProperty :: DatabaseTablesProperty
mkDatabaseTablesProperty
  = DatabaseTablesProperty
      {haddock_workaround_ = (), exclude = Prelude.Nothing,
       include = Prelude.Nothing}
instance ToResourceProperties DatabaseTablesProperty where
  toResourceProperties DatabaseTablesProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DatabaseTables",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON DatabaseTablesProperty where
  toJSON DatabaseTablesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" DatabaseTablesProperty where
  type PropertyType "Exclude" DatabaseTablesProperty = ValueList Prelude.Text
  set newValue DatabaseTablesProperty {..}
    = DatabaseTablesProperty {exclude = Prelude.pure newValue, ..}
instance Property "Include" DatabaseTablesProperty where
  type PropertyType "Include" DatabaseTablesProperty = ValueList Prelude.Text
  set newValue DatabaseTablesProperty {..}
    = DatabaseTablesProperty {include = Prelude.pure newValue, ..}