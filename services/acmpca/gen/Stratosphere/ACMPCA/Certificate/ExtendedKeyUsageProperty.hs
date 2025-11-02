module Stratosphere.ACMPCA.Certificate.ExtendedKeyUsageProperty (
        ExtendedKeyUsageProperty(..), mkExtendedKeyUsageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExtendedKeyUsageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extendedkeyusage.html>
    ExtendedKeyUsageProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extendedkeyusage.html#cfn-acmpca-certificate-extendedkeyusage-extendedkeyusageobjectidentifier>
                              extendedKeyUsageObjectIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-extendedkeyusage.html#cfn-acmpca-certificate-extendedkeyusage-extendedkeyusagetype>
                              extendedKeyUsageType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtendedKeyUsageProperty :: ExtendedKeyUsageProperty
mkExtendedKeyUsageProperty
  = ExtendedKeyUsageProperty
      {haddock_workaround_ = (),
       extendedKeyUsageObjectIdentifier = Prelude.Nothing,
       extendedKeyUsageType = Prelude.Nothing}
instance ToResourceProperties ExtendedKeyUsageProperty where
  toResourceProperties ExtendedKeyUsageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.ExtendedKeyUsage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExtendedKeyUsageObjectIdentifier"
                              Prelude.<$> extendedKeyUsageObjectIdentifier,
                            (JSON..=) "ExtendedKeyUsageType"
                              Prelude.<$> extendedKeyUsageType])}
instance JSON.ToJSON ExtendedKeyUsageProperty where
  toJSON ExtendedKeyUsageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExtendedKeyUsageObjectIdentifier"
                 Prelude.<$> extendedKeyUsageObjectIdentifier,
               (JSON..=) "ExtendedKeyUsageType"
                 Prelude.<$> extendedKeyUsageType]))
instance Property "ExtendedKeyUsageObjectIdentifier" ExtendedKeyUsageProperty where
  type PropertyType "ExtendedKeyUsageObjectIdentifier" ExtendedKeyUsageProperty = Value Prelude.Text
  set newValue ExtendedKeyUsageProperty {..}
    = ExtendedKeyUsageProperty
        {extendedKeyUsageObjectIdentifier = Prelude.pure newValue, ..}
instance Property "ExtendedKeyUsageType" ExtendedKeyUsageProperty where
  type PropertyType "ExtendedKeyUsageType" ExtendedKeyUsageProperty = Value Prelude.Text
  set newValue ExtendedKeyUsageProperty {..}
    = ExtendedKeyUsageProperty
        {extendedKeyUsageType = Prelude.pure newValue, ..}