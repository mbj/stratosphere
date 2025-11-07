module Stratosphere.WAFv2.WebACL.RateLimitJA4FingerprintProperty (
        RateLimitJA4FingerprintProperty(..),
        mkRateLimitJA4FingerprintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateLimitJA4FingerprintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratelimitja4fingerprint.html>
    RateLimitJA4FingerprintProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratelimitja4fingerprint.html#cfn-wafv2-webacl-ratelimitja4fingerprint-fallbackbehavior>
                                     fallbackBehavior :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitJA4FingerprintProperty ::
  Value Prelude.Text -> RateLimitJA4FingerprintProperty
mkRateLimitJA4FingerprintProperty fallbackBehavior
  = RateLimitJA4FingerprintProperty
      {haddock_workaround_ = (), fallbackBehavior = fallbackBehavior}
instance ToResourceProperties RateLimitJA4FingerprintProperty where
  toResourceProperties RateLimitJA4FingerprintProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RateLimitJA4Fingerprint",
         supportsTags = Prelude.False,
         properties = ["FallbackBehavior" JSON..= fallbackBehavior]}
instance JSON.ToJSON RateLimitJA4FingerprintProperty where
  toJSON RateLimitJA4FingerprintProperty {..}
    = JSON.object ["FallbackBehavior" JSON..= fallbackBehavior]
instance Property "FallbackBehavior" RateLimitJA4FingerprintProperty where
  type PropertyType "FallbackBehavior" RateLimitJA4FingerprintProperty = Value Prelude.Text
  set newValue RateLimitJA4FingerprintProperty {..}
    = RateLimitJA4FingerprintProperty {fallbackBehavior = newValue, ..}