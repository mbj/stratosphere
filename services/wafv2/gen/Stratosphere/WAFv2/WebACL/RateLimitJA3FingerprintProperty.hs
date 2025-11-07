module Stratosphere.WAFv2.WebACL.RateLimitJA3FingerprintProperty (
        RateLimitJA3FingerprintProperty(..),
        mkRateLimitJA3FingerprintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateLimitJA3FingerprintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratelimitja3fingerprint.html>
    RateLimitJA3FingerprintProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratelimitja3fingerprint.html#cfn-wafv2-webacl-ratelimitja3fingerprint-fallbackbehavior>
                                     fallbackBehavior :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitJA3FingerprintProperty ::
  Value Prelude.Text -> RateLimitJA3FingerprintProperty
mkRateLimitJA3FingerprintProperty fallbackBehavior
  = RateLimitJA3FingerprintProperty
      {haddock_workaround_ = (), fallbackBehavior = fallbackBehavior}
instance ToResourceProperties RateLimitJA3FingerprintProperty where
  toResourceProperties RateLimitJA3FingerprintProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RateLimitJA3Fingerprint",
         supportsTags = Prelude.False,
         properties = ["FallbackBehavior" JSON..= fallbackBehavior]}
instance JSON.ToJSON RateLimitJA3FingerprintProperty where
  toJSON RateLimitJA3FingerprintProperty {..}
    = JSON.object ["FallbackBehavior" JSON..= fallbackBehavior]
instance Property "FallbackBehavior" RateLimitJA3FingerprintProperty where
  type PropertyType "FallbackBehavior" RateLimitJA3FingerprintProperty = Value Prelude.Text
  set newValue RateLimitJA3FingerprintProperty {..}
    = RateLimitJA3FingerprintProperty {fallbackBehavior = newValue, ..}