module Stratosphere.CloudFront.Distribution.CustomOriginConfigProperty (
        CustomOriginConfigProperty(..), mkCustomOriginConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomOriginConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html>
    CustomOriginConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpport>
                                hTTPPort :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpsport>
                                hTTPSPort :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originkeepalivetimeout>
                                originKeepaliveTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originprotocolpolicy>
                                originProtocolPolicy :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originreadtimeout>
                                originReadTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originsslprotocols>
                                originSSLProtocols :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomOriginConfigProperty ::
  Value Prelude.Text -> CustomOriginConfigProperty
mkCustomOriginConfigProperty originProtocolPolicy
  = CustomOriginConfigProperty
      {haddock_workaround_ = (),
       originProtocolPolicy = originProtocolPolicy,
       hTTPPort = Prelude.Nothing, hTTPSPort = Prelude.Nothing,
       originKeepaliveTimeout = Prelude.Nothing,
       originReadTimeout = Prelude.Nothing,
       originSSLProtocols = Prelude.Nothing}
instance ToResourceProperties CustomOriginConfigProperty where
  toResourceProperties CustomOriginConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.CustomOriginConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OriginProtocolPolicy" JSON..= originProtocolPolicy]
                           (Prelude.catMaybes
                              [(JSON..=) "HTTPPort" Prelude.<$> hTTPPort,
                               (JSON..=) "HTTPSPort" Prelude.<$> hTTPSPort,
                               (JSON..=) "OriginKeepaliveTimeout"
                                 Prelude.<$> originKeepaliveTimeout,
                               (JSON..=) "OriginReadTimeout" Prelude.<$> originReadTimeout,
                               (JSON..=) "OriginSSLProtocols" Prelude.<$> originSSLProtocols]))}
instance JSON.ToJSON CustomOriginConfigProperty where
  toJSON CustomOriginConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OriginProtocolPolicy" JSON..= originProtocolPolicy]
              (Prelude.catMaybes
                 [(JSON..=) "HTTPPort" Prelude.<$> hTTPPort,
                  (JSON..=) "HTTPSPort" Prelude.<$> hTTPSPort,
                  (JSON..=) "OriginKeepaliveTimeout"
                    Prelude.<$> originKeepaliveTimeout,
                  (JSON..=) "OriginReadTimeout" Prelude.<$> originReadTimeout,
                  (JSON..=) "OriginSSLProtocols" Prelude.<$> originSSLProtocols])))
instance Property "HTTPPort" CustomOriginConfigProperty where
  type PropertyType "HTTPPort" CustomOriginConfigProperty = Value Prelude.Integer
  set newValue CustomOriginConfigProperty {..}
    = CustomOriginConfigProperty {hTTPPort = Prelude.pure newValue, ..}
instance Property "HTTPSPort" CustomOriginConfigProperty where
  type PropertyType "HTTPSPort" CustomOriginConfigProperty = Value Prelude.Integer
  set newValue CustomOriginConfigProperty {..}
    = CustomOriginConfigProperty
        {hTTPSPort = Prelude.pure newValue, ..}
instance Property "OriginKeepaliveTimeout" CustomOriginConfigProperty where
  type PropertyType "OriginKeepaliveTimeout" CustomOriginConfigProperty = Value Prelude.Integer
  set newValue CustomOriginConfigProperty {..}
    = CustomOriginConfigProperty
        {originKeepaliveTimeout = Prelude.pure newValue, ..}
instance Property "OriginProtocolPolicy" CustomOriginConfigProperty where
  type PropertyType "OriginProtocolPolicy" CustomOriginConfigProperty = Value Prelude.Text
  set newValue CustomOriginConfigProperty {..}
    = CustomOriginConfigProperty {originProtocolPolicy = newValue, ..}
instance Property "OriginReadTimeout" CustomOriginConfigProperty where
  type PropertyType "OriginReadTimeout" CustomOriginConfigProperty = Value Prelude.Integer
  set newValue CustomOriginConfigProperty {..}
    = CustomOriginConfigProperty
        {originReadTimeout = Prelude.pure newValue, ..}
instance Property "OriginSSLProtocols" CustomOriginConfigProperty where
  type PropertyType "OriginSSLProtocols" CustomOriginConfigProperty = ValueList Prelude.Text
  set newValue CustomOriginConfigProperty {..}
    = CustomOriginConfigProperty
        {originSSLProtocols = Prelude.pure newValue, ..}