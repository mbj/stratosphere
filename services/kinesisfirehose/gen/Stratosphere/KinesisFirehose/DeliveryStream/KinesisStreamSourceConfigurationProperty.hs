module Stratosphere.KinesisFirehose.DeliveryStream.KinesisStreamSourceConfigurationProperty (
        KinesisStreamSourceConfigurationProperty(..),
        mkKinesisStreamSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html>
    KinesisStreamSourceConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-kinesisstreamarn>
                                              kinesisStreamARN :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-rolearn>
                                              roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamSourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisStreamSourceConfigurationProperty
mkKinesisStreamSourceConfigurationProperty kinesisStreamARN roleARN
  = KinesisStreamSourceConfigurationProperty
      {haddock_workaround_ = (), kinesisStreamARN = kinesisStreamARN,
       roleARN = roleARN}
instance ToResourceProperties KinesisStreamSourceConfigurationProperty where
  toResourceProperties KinesisStreamSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.KinesisStreamSourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["KinesisStreamARN" JSON..= kinesisStreamARN,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON KinesisStreamSourceConfigurationProperty where
  toJSON KinesisStreamSourceConfigurationProperty {..}
    = JSON.object
        ["KinesisStreamARN" JSON..= kinesisStreamARN,
         "RoleARN" JSON..= roleARN]
instance Property "KinesisStreamARN" KinesisStreamSourceConfigurationProperty where
  type PropertyType "KinesisStreamARN" KinesisStreamSourceConfigurationProperty = Value Prelude.Text
  set newValue KinesisStreamSourceConfigurationProperty {..}
    = KinesisStreamSourceConfigurationProperty
        {kinesisStreamARN = newValue, ..}
instance Property "RoleARN" KinesisStreamSourceConfigurationProperty where
  type PropertyType "RoleARN" KinesisStreamSourceConfigurationProperty = Value Prelude.Text
  set newValue KinesisStreamSourceConfigurationProperty {..}
    = KinesisStreamSourceConfigurationProperty {roleARN = newValue, ..}