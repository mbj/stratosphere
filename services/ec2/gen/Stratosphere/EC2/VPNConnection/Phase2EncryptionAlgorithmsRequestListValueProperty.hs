module Stratosphere.EC2.VPNConnection.Phase2EncryptionAlgorithmsRequestListValueProperty (
        Phase2EncryptionAlgorithmsRequestListValueProperty(..),
        mkPhase2EncryptionAlgorithmsRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Phase2EncryptionAlgorithmsRequestListValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase2encryptionalgorithmsrequestlistvalue.html>
    Phase2EncryptionAlgorithmsRequestListValueProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase2encryptionalgorithmsrequestlistvalue.html#cfn-ec2-vpnconnection-phase2encryptionalgorithmsrequestlistvalue-value>
                                                        value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhase2EncryptionAlgorithmsRequestListValueProperty ::
  Phase2EncryptionAlgorithmsRequestListValueProperty
mkPhase2EncryptionAlgorithmsRequestListValueProperty
  = Phase2EncryptionAlgorithmsRequestListValueProperty
      {haddock_workaround_ = (), value = Prelude.Nothing}
instance ToResourceProperties Phase2EncryptionAlgorithmsRequestListValueProperty where
  toResourceProperties
    Phase2EncryptionAlgorithmsRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.Phase2EncryptionAlgorithmsRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Phase2EncryptionAlgorithmsRequestListValueProperty where
  toJSON Phase2EncryptionAlgorithmsRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" Phase2EncryptionAlgorithmsRequestListValueProperty where
  type PropertyType "Value" Phase2EncryptionAlgorithmsRequestListValueProperty = Value Prelude.Text
  set
    newValue
    Phase2EncryptionAlgorithmsRequestListValueProperty {..}
    = Phase2EncryptionAlgorithmsRequestListValueProperty
        {value = Prelude.pure newValue, ..}