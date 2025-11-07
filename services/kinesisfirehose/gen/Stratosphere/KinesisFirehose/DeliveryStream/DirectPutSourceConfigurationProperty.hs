module Stratosphere.KinesisFirehose.DeliveryStream.DirectPutSourceConfigurationProperty (
        DirectPutSourceConfigurationProperty(..),
        mkDirectPutSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DirectPutSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-directputsourceconfiguration.html>
    DirectPutSourceConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-directputsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-directputsourceconfiguration-throughputhintinmbs>
                                          throughputHintInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDirectPutSourceConfigurationProperty ::
  DirectPutSourceConfigurationProperty
mkDirectPutSourceConfigurationProperty
  = DirectPutSourceConfigurationProperty
      {haddock_workaround_ = (), throughputHintInMBs = Prelude.Nothing}
instance ToResourceProperties DirectPutSourceConfigurationProperty where
  toResourceProperties DirectPutSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DirectPutSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ThroughputHintInMBs" Prelude.<$> throughputHintInMBs])}
instance JSON.ToJSON DirectPutSourceConfigurationProperty where
  toJSON DirectPutSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ThroughputHintInMBs" Prelude.<$> throughputHintInMBs]))
instance Property "ThroughputHintInMBs" DirectPutSourceConfigurationProperty where
  type PropertyType "ThroughputHintInMBs" DirectPutSourceConfigurationProperty = Value Prelude.Integer
  set newValue DirectPutSourceConfigurationProperty {..}
    = DirectPutSourceConfigurationProperty
        {throughputHintInMBs = Prelude.pure newValue, ..}