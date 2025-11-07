module Stratosphere.KinesisFirehose.DeliveryStream.TableCreationConfigurationProperty (
        TableCreationConfigurationProperty(..),
        mkTableCreationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableCreationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-tablecreationconfiguration.html>
    TableCreationConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-tablecreationconfiguration.html#cfn-kinesisfirehose-deliverystream-tablecreationconfiguration-enabled>
                                        enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableCreationConfigurationProperty ::
  TableCreationConfigurationProperty
mkTableCreationConfigurationProperty
  = TableCreationConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties TableCreationConfigurationProperty where
  toResourceProperties TableCreationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.TableCreationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON TableCreationConfigurationProperty where
  toJSON TableCreationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" TableCreationConfigurationProperty where
  type PropertyType "Enabled" TableCreationConfigurationProperty = Value Prelude.Bool
  set newValue TableCreationConfigurationProperty {..}
    = TableCreationConfigurationProperty
        {enabled = Prelude.pure newValue, ..}