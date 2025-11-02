module Stratosphere.WAFv2.WebACL.JA3FingerprintProperty (
        JA3FingerprintProperty(..), mkJA3FingerprintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JA3FingerprintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ja3fingerprint.html>
    JA3FingerprintProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ja3fingerprint.html#cfn-wafv2-webacl-ja3fingerprint-fallbackbehavior>
                            fallbackBehavior :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJA3FingerprintProperty ::
  Value Prelude.Text -> JA3FingerprintProperty
mkJA3FingerprintProperty fallbackBehavior
  = JA3FingerprintProperty
      {haddock_workaround_ = (), fallbackBehavior = fallbackBehavior}
instance ToResourceProperties JA3FingerprintProperty where
  toResourceProperties JA3FingerprintProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.JA3Fingerprint",
         supportsTags = Prelude.False,
         properties = ["FallbackBehavior" JSON..= fallbackBehavior]}
instance JSON.ToJSON JA3FingerprintProperty where
  toJSON JA3FingerprintProperty {..}
    = JSON.object ["FallbackBehavior" JSON..= fallbackBehavior]
instance Property "FallbackBehavior" JA3FingerprintProperty where
  type PropertyType "FallbackBehavior" JA3FingerprintProperty = Value Prelude.Text
  set newValue JA3FingerprintProperty {..}
    = JA3FingerprintProperty {fallbackBehavior = newValue, ..}