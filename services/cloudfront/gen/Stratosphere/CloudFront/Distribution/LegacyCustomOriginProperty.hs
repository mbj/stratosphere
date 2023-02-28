module Stratosphere.CloudFront.Distribution.LegacyCustomOriginProperty (
        LegacyCustomOriginProperty(..), mkLegacyCustomOriginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LegacyCustomOriginProperty
  = LegacyCustomOriginProperty {dNSName :: (Value Prelude.Text),
                                hTTPPort :: (Prelude.Maybe (Value Prelude.Integer)),
                                hTTPSPort :: (Prelude.Maybe (Value Prelude.Integer)),
                                originProtocolPolicy :: (Value Prelude.Text),
                                originSSLProtocols :: (ValueList Prelude.Text)}
mkLegacyCustomOriginProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> LegacyCustomOriginProperty
mkLegacyCustomOriginProperty
  dNSName
  originProtocolPolicy
  originSSLProtocols
  = LegacyCustomOriginProperty
      {dNSName = dNSName, originProtocolPolicy = originProtocolPolicy,
       originSSLProtocols = originSSLProtocols,
       hTTPPort = Prelude.Nothing, hTTPSPort = Prelude.Nothing}
instance ToResourceProperties LegacyCustomOriginProperty where
  toResourceProperties LegacyCustomOriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.LegacyCustomOrigin",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DNSName" JSON..= dNSName,
                            "OriginProtocolPolicy" JSON..= originProtocolPolicy,
                            "OriginSSLProtocols" JSON..= originSSLProtocols]
                           (Prelude.catMaybes
                              [(JSON..=) "HTTPPort" Prelude.<$> hTTPPort,
                               (JSON..=) "HTTPSPort" Prelude.<$> hTTPSPort]))}
instance JSON.ToJSON LegacyCustomOriginProperty where
  toJSON LegacyCustomOriginProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DNSName" JSON..= dNSName,
               "OriginProtocolPolicy" JSON..= originProtocolPolicy,
               "OriginSSLProtocols" JSON..= originSSLProtocols]
              (Prelude.catMaybes
                 [(JSON..=) "HTTPPort" Prelude.<$> hTTPPort,
                  (JSON..=) "HTTPSPort" Prelude.<$> hTTPSPort])))
instance Property "DNSName" LegacyCustomOriginProperty where
  type PropertyType "DNSName" LegacyCustomOriginProperty = Value Prelude.Text
  set newValue LegacyCustomOriginProperty {..}
    = LegacyCustomOriginProperty {dNSName = newValue, ..}
instance Property "HTTPPort" LegacyCustomOriginProperty where
  type PropertyType "HTTPPort" LegacyCustomOriginProperty = Value Prelude.Integer
  set newValue LegacyCustomOriginProperty {..}
    = LegacyCustomOriginProperty {hTTPPort = Prelude.pure newValue, ..}
instance Property "HTTPSPort" LegacyCustomOriginProperty where
  type PropertyType "HTTPSPort" LegacyCustomOriginProperty = Value Prelude.Integer
  set newValue LegacyCustomOriginProperty {..}
    = LegacyCustomOriginProperty
        {hTTPSPort = Prelude.pure newValue, ..}
instance Property "OriginProtocolPolicy" LegacyCustomOriginProperty where
  type PropertyType "OriginProtocolPolicy" LegacyCustomOriginProperty = Value Prelude.Text
  set newValue LegacyCustomOriginProperty {..}
    = LegacyCustomOriginProperty {originProtocolPolicy = newValue, ..}
instance Property "OriginSSLProtocols" LegacyCustomOriginProperty where
  type PropertyType "OriginSSLProtocols" LegacyCustomOriginProperty = ValueList Prelude.Text
  set newValue LegacyCustomOriginProperty {..}
    = LegacyCustomOriginProperty {originSSLProtocols = newValue, ..}