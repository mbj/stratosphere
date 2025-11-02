module Stratosphere.EC2.VPNConnection.Phase1EncryptionAlgorithmsRequestListValueProperty (
        Phase1EncryptionAlgorithmsRequestListValueProperty(..),
        mkPhase1EncryptionAlgorithmsRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Phase1EncryptionAlgorithmsRequestListValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase1encryptionalgorithmsrequestlistvalue.html>
    Phase1EncryptionAlgorithmsRequestListValueProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-phase1encryptionalgorithmsrequestlistvalue.html#cfn-ec2-vpnconnection-phase1encryptionalgorithmsrequestlistvalue-value>
                                                        value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhase1EncryptionAlgorithmsRequestListValueProperty ::
  Phase1EncryptionAlgorithmsRequestListValueProperty
mkPhase1EncryptionAlgorithmsRequestListValueProperty
  = Phase1EncryptionAlgorithmsRequestListValueProperty
      {haddock_workaround_ = (), value = Prelude.Nothing}
instance ToResourceProperties Phase1EncryptionAlgorithmsRequestListValueProperty where
  toResourceProperties
    Phase1EncryptionAlgorithmsRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.Phase1EncryptionAlgorithmsRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Phase1EncryptionAlgorithmsRequestListValueProperty where
  toJSON Phase1EncryptionAlgorithmsRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" Phase1EncryptionAlgorithmsRequestListValueProperty where
  type PropertyType "Value" Phase1EncryptionAlgorithmsRequestListValueProperty = Value Prelude.Text
  set
    newValue
    Phase1EncryptionAlgorithmsRequestListValueProperty {..}
    = Phase1EncryptionAlgorithmsRequestListValueProperty
        {value = Prelude.pure newValue, ..}