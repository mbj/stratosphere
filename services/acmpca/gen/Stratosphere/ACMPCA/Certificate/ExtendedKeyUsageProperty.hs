module Stratosphere.ACMPCA.Certificate.ExtendedKeyUsageProperty (
        ExtendedKeyUsageProperty(..), mkExtendedKeyUsageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExtendedKeyUsageProperty
  = ExtendedKeyUsageProperty {extendedKeyUsageObjectIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                              extendedKeyUsageType :: (Prelude.Maybe (Value Prelude.Text))}
mkExtendedKeyUsageProperty :: ExtendedKeyUsageProperty
mkExtendedKeyUsageProperty
  = ExtendedKeyUsageProperty
      {extendedKeyUsageObjectIdentifier = Prelude.Nothing,
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