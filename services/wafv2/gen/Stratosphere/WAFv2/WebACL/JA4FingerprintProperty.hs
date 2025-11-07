module Stratosphere.WAFv2.WebACL.JA4FingerprintProperty (
        JA4FingerprintProperty(..), mkJA4FingerprintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JA4FingerprintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ja4fingerprint.html>
    JA4FingerprintProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ja4fingerprint.html#cfn-wafv2-webacl-ja4fingerprint-fallbackbehavior>
                            fallbackBehavior :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJA4FingerprintProperty ::
  Value Prelude.Text -> JA4FingerprintProperty
mkJA4FingerprintProperty fallbackBehavior
  = JA4FingerprintProperty
      {haddock_workaround_ = (), fallbackBehavior = fallbackBehavior}
instance ToResourceProperties JA4FingerprintProperty where
  toResourceProperties JA4FingerprintProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.JA4Fingerprint",
         supportsTags = Prelude.False,
         properties = ["FallbackBehavior" JSON..= fallbackBehavior]}
instance JSON.ToJSON JA4FingerprintProperty where
  toJSON JA4FingerprintProperty {..}
    = JSON.object ["FallbackBehavior" JSON..= fallbackBehavior]
instance Property "FallbackBehavior" JA4FingerprintProperty where
  type PropertyType "FallbackBehavior" JA4FingerprintProperty = Value Prelude.Text
  set newValue JA4FingerprintProperty {..}
    = JA4FingerprintProperty {fallbackBehavior = newValue, ..}