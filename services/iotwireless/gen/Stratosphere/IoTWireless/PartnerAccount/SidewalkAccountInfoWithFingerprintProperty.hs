module Stratosphere.IoTWireless.PartnerAccount.SidewalkAccountInfoWithFingerprintProperty (
        SidewalkAccountInfoWithFingerprintProperty(..),
        mkSidewalkAccountInfoWithFingerprintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SidewalkAccountInfoWithFingerprintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-partneraccount-sidewalkaccountinfowithfingerprint.html>
    SidewalkAccountInfoWithFingerprintProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-partneraccount-sidewalkaccountinfowithfingerprint.html#cfn-iotwireless-partneraccount-sidewalkaccountinfowithfingerprint-amazonid>
                                                amazonId :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-partneraccount-sidewalkaccountinfowithfingerprint.html#cfn-iotwireless-partneraccount-sidewalkaccountinfowithfingerprint-arn>
                                                arn :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-partneraccount-sidewalkaccountinfowithfingerprint.html#cfn-iotwireless-partneraccount-sidewalkaccountinfowithfingerprint-fingerprint>
                                                fingerprint :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSidewalkAccountInfoWithFingerprintProperty ::
  SidewalkAccountInfoWithFingerprintProperty
mkSidewalkAccountInfoWithFingerprintProperty
  = SidewalkAccountInfoWithFingerprintProperty
      {haddock_workaround_ = (), amazonId = Prelude.Nothing,
       arn = Prelude.Nothing, fingerprint = Prelude.Nothing}
instance ToResourceProperties SidewalkAccountInfoWithFingerprintProperty where
  toResourceProperties
    SidewalkAccountInfoWithFingerprintProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::PartnerAccount.SidewalkAccountInfoWithFingerprint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AmazonId" Prelude.<$> amazonId,
                            (JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "Fingerprint" Prelude.<$> fingerprint])}
instance JSON.ToJSON SidewalkAccountInfoWithFingerprintProperty where
  toJSON SidewalkAccountInfoWithFingerprintProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AmazonId" Prelude.<$> amazonId,
               (JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "Fingerprint" Prelude.<$> fingerprint]))
instance Property "AmazonId" SidewalkAccountInfoWithFingerprintProperty where
  type PropertyType "AmazonId" SidewalkAccountInfoWithFingerprintProperty = Value Prelude.Text
  set newValue SidewalkAccountInfoWithFingerprintProperty {..}
    = SidewalkAccountInfoWithFingerprintProperty
        {amazonId = Prelude.pure newValue, ..}
instance Property "Arn" SidewalkAccountInfoWithFingerprintProperty where
  type PropertyType "Arn" SidewalkAccountInfoWithFingerprintProperty = Value Prelude.Text
  set newValue SidewalkAccountInfoWithFingerprintProperty {..}
    = SidewalkAccountInfoWithFingerprintProperty
        {arn = Prelude.pure newValue, ..}
instance Property "Fingerprint" SidewalkAccountInfoWithFingerprintProperty where
  type PropertyType "Fingerprint" SidewalkAccountInfoWithFingerprintProperty = Value Prelude.Text
  set newValue SidewalkAccountInfoWithFingerprintProperty {..}
    = SidewalkAccountInfoWithFingerprintProperty
        {fingerprint = Prelude.pure newValue, ..}