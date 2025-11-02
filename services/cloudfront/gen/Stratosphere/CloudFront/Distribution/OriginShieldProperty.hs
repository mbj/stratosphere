module Stratosphere.CloudFront.Distribution.OriginShieldProperty (
        OriginShieldProperty(..), mkOriginShieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginShieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-originshield.html>
    OriginShieldProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-originshield.html#cfn-cloudfront-distribution-originshield-enabled>
                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-originshield.html#cfn-cloudfront-distribution-originshield-originshieldregion>
                          originShieldRegion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginShieldProperty :: OriginShieldProperty
mkOriginShieldProperty
  = OriginShieldProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       originShieldRegion = Prelude.Nothing}
instance ToResourceProperties OriginShieldProperty where
  toResourceProperties OriginShieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginShield",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "OriginShieldRegion" Prelude.<$> originShieldRegion])}
instance JSON.ToJSON OriginShieldProperty where
  toJSON OriginShieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "OriginShieldRegion" Prelude.<$> originShieldRegion]))
instance Property "Enabled" OriginShieldProperty where
  type PropertyType "Enabled" OriginShieldProperty = Value Prelude.Bool
  set newValue OriginShieldProperty {..}
    = OriginShieldProperty {enabled = Prelude.pure newValue, ..}
instance Property "OriginShieldRegion" OriginShieldProperty where
  type PropertyType "OriginShieldRegion" OriginShieldProperty = Value Prelude.Text
  set newValue OriginShieldProperty {..}
    = OriginShieldProperty
        {originShieldRegion = Prelude.pure newValue, ..}