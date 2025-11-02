module Stratosphere.KinesisFirehose.DeliveryStream.DestinationTableConfigurationProperty (
        DestinationTableConfigurationProperty(..),
        mkDestinationTableConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationTableConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-destinationtableconfiguration.html>
    DestinationTableConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-destinationtableconfiguration.html#cfn-kinesisfirehose-deliverystream-destinationtableconfiguration-destinationdatabasename>
                                           destinationDatabaseName :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-destinationtableconfiguration.html#cfn-kinesisfirehose-deliverystream-destinationtableconfiguration-destinationtablename>
                                           destinationTableName :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-destinationtableconfiguration.html#cfn-kinesisfirehose-deliverystream-destinationtableconfiguration-s3erroroutputprefix>
                                           s3ErrorOutputPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-destinationtableconfiguration.html#cfn-kinesisfirehose-deliverystream-destinationtableconfiguration-uniquekeys>
                                           uniqueKeys :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationTableConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DestinationTableConfigurationProperty
mkDestinationTableConfigurationProperty
  destinationDatabaseName
  destinationTableName
  = DestinationTableConfigurationProperty
      {haddock_workaround_ = (),
       destinationDatabaseName = destinationDatabaseName,
       destinationTableName = destinationTableName,
       s3ErrorOutputPrefix = Prelude.Nothing,
       uniqueKeys = Prelude.Nothing}
instance ToResourceProperties DestinationTableConfigurationProperty where
  toResourceProperties DestinationTableConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DestinationTableConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationDatabaseName" JSON..= destinationDatabaseName,
                            "DestinationTableName" JSON..= destinationTableName]
                           (Prelude.catMaybes
                              [(JSON..=) "S3ErrorOutputPrefix" Prelude.<$> s3ErrorOutputPrefix,
                               (JSON..=) "UniqueKeys" Prelude.<$> uniqueKeys]))}
instance JSON.ToJSON DestinationTableConfigurationProperty where
  toJSON DestinationTableConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationDatabaseName" JSON..= destinationDatabaseName,
               "DestinationTableName" JSON..= destinationTableName]
              (Prelude.catMaybes
                 [(JSON..=) "S3ErrorOutputPrefix" Prelude.<$> s3ErrorOutputPrefix,
                  (JSON..=) "UniqueKeys" Prelude.<$> uniqueKeys])))
instance Property "DestinationDatabaseName" DestinationTableConfigurationProperty where
  type PropertyType "DestinationDatabaseName" DestinationTableConfigurationProperty = Value Prelude.Text
  set newValue DestinationTableConfigurationProperty {..}
    = DestinationTableConfigurationProperty
        {destinationDatabaseName = newValue, ..}
instance Property "DestinationTableName" DestinationTableConfigurationProperty where
  type PropertyType "DestinationTableName" DestinationTableConfigurationProperty = Value Prelude.Text
  set newValue DestinationTableConfigurationProperty {..}
    = DestinationTableConfigurationProperty
        {destinationTableName = newValue, ..}
instance Property "S3ErrorOutputPrefix" DestinationTableConfigurationProperty where
  type PropertyType "S3ErrorOutputPrefix" DestinationTableConfigurationProperty = Value Prelude.Text
  set newValue DestinationTableConfigurationProperty {..}
    = DestinationTableConfigurationProperty
        {s3ErrorOutputPrefix = Prelude.pure newValue, ..}
instance Property "UniqueKeys" DestinationTableConfigurationProperty where
  type PropertyType "UniqueKeys" DestinationTableConfigurationProperty = ValueList Prelude.Text
  set newValue DestinationTableConfigurationProperty {..}
    = DestinationTableConfigurationProperty
        {uniqueKeys = Prelude.pure newValue, ..}