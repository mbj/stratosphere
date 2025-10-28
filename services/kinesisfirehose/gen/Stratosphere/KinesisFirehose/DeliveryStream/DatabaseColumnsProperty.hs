module Stratosphere.KinesisFirehose.DeliveryStream.DatabaseColumnsProperty (
        DatabaseColumnsProperty(..), mkDatabaseColumnsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseColumnsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasecolumns.html>
    DatabaseColumnsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasecolumns.html#cfn-kinesisfirehose-deliverystream-databasecolumns-exclude>
                             exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasecolumns.html#cfn-kinesisfirehose-deliverystream-databasecolumns-include>
                             include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseColumnsProperty :: DatabaseColumnsProperty
mkDatabaseColumnsProperty
  = DatabaseColumnsProperty
      {haddock_workaround_ = (), exclude = Prelude.Nothing,
       include = Prelude.Nothing}
instance ToResourceProperties DatabaseColumnsProperty where
  toResourceProperties DatabaseColumnsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DatabaseColumns",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON DatabaseColumnsProperty where
  toJSON DatabaseColumnsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" DatabaseColumnsProperty where
  type PropertyType "Exclude" DatabaseColumnsProperty = ValueList Prelude.Text
  set newValue DatabaseColumnsProperty {..}
    = DatabaseColumnsProperty {exclude = Prelude.pure newValue, ..}
instance Property "Include" DatabaseColumnsProperty where
  type PropertyType "Include" DatabaseColumnsProperty = ValueList Prelude.Text
  set newValue DatabaseColumnsProperty {..}
    = DatabaseColumnsProperty {include = Prelude.pure newValue, ..}