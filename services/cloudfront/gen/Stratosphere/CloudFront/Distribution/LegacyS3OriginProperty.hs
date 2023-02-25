module Stratosphere.CloudFront.Distribution.LegacyS3OriginProperty (
        LegacyS3OriginProperty(..), mkLegacyS3OriginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LegacyS3OriginProperty
  = LegacyS3OriginProperty {dNSName :: (Value Prelude.Text),
                            originAccessIdentity :: (Prelude.Maybe (Value Prelude.Text))}
mkLegacyS3OriginProperty ::
  Value Prelude.Text -> LegacyS3OriginProperty
mkLegacyS3OriginProperty dNSName
  = LegacyS3OriginProperty
      {dNSName = dNSName, originAccessIdentity = Prelude.Nothing}
instance ToResourceProperties LegacyS3OriginProperty where
  toResourceProperties LegacyS3OriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.LegacyS3Origin",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DNSName" JSON..= dNSName]
                           (Prelude.catMaybes
                              [(JSON..=) "OriginAccessIdentity"
                                 Prelude.<$> originAccessIdentity]))}
instance JSON.ToJSON LegacyS3OriginProperty where
  toJSON LegacyS3OriginProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DNSName" JSON..= dNSName]
              (Prelude.catMaybes
                 [(JSON..=) "OriginAccessIdentity"
                    Prelude.<$> originAccessIdentity])))
instance Property "DNSName" LegacyS3OriginProperty where
  type PropertyType "DNSName" LegacyS3OriginProperty = Value Prelude.Text
  set newValue LegacyS3OriginProperty {..}
    = LegacyS3OriginProperty {dNSName = newValue, ..}
instance Property "OriginAccessIdentity" LegacyS3OriginProperty where
  type PropertyType "OriginAccessIdentity" LegacyS3OriginProperty = Value Prelude.Text
  set newValue LegacyS3OriginProperty {..}
    = LegacyS3OriginProperty
        {originAccessIdentity = Prelude.pure newValue, ..}