module Stratosphere.CloudFront.VpcOrigin.VpcOriginEndpointConfigProperty (
        VpcOriginEndpointConfigProperty(..),
        mkVpcOriginEndpointConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcOriginEndpointConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-vpcorigin-vpcoriginendpointconfig.html>
    VpcOriginEndpointConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-vpcorigin-vpcoriginendpointconfig.html#cfn-cloudfront-vpcorigin-vpcoriginendpointconfig-arn>
                                     arn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-vpcorigin-vpcoriginendpointconfig.html#cfn-cloudfront-vpcorigin-vpcoriginendpointconfig-httpport>
                                     hTTPPort :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-vpcorigin-vpcoriginendpointconfig.html#cfn-cloudfront-vpcorigin-vpcoriginendpointconfig-httpsport>
                                     hTTPSPort :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-vpcorigin-vpcoriginendpointconfig.html#cfn-cloudfront-vpcorigin-vpcoriginendpointconfig-name>
                                     name :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-vpcorigin-vpcoriginendpointconfig.html#cfn-cloudfront-vpcorigin-vpcoriginendpointconfig-originprotocolpolicy>
                                     originProtocolPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-vpcorigin-vpcoriginendpointconfig.html#cfn-cloudfront-vpcorigin-vpcoriginendpointconfig-originsslprotocols>
                                     originSSLProtocols :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOriginEndpointConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> VpcOriginEndpointConfigProperty
mkVpcOriginEndpointConfigProperty arn name
  = VpcOriginEndpointConfigProperty
      {haddock_workaround_ = (), arn = arn, name = name,
       hTTPPort = Prelude.Nothing, hTTPSPort = Prelude.Nothing,
       originProtocolPolicy = Prelude.Nothing,
       originSSLProtocols = Prelude.Nothing}
instance ToResourceProperties VpcOriginEndpointConfigProperty where
  toResourceProperties VpcOriginEndpointConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::VpcOrigin.VpcOriginEndpointConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "HTTPPort" Prelude.<$> hTTPPort,
                               (JSON..=) "HTTPSPort" Prelude.<$> hTTPSPort,
                               (JSON..=) "OriginProtocolPolicy" Prelude.<$> originProtocolPolicy,
                               (JSON..=) "OriginSSLProtocols" Prelude.<$> originSSLProtocols]))}
instance JSON.ToJSON VpcOriginEndpointConfigProperty where
  toJSON VpcOriginEndpointConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "HTTPPort" Prelude.<$> hTTPPort,
                  (JSON..=) "HTTPSPort" Prelude.<$> hTTPSPort,
                  (JSON..=) "OriginProtocolPolicy" Prelude.<$> originProtocolPolicy,
                  (JSON..=) "OriginSSLProtocols" Prelude.<$> originSSLProtocols])))
instance Property "Arn" VpcOriginEndpointConfigProperty where
  type PropertyType "Arn" VpcOriginEndpointConfigProperty = Value Prelude.Text
  set newValue VpcOriginEndpointConfigProperty {..}
    = VpcOriginEndpointConfigProperty {arn = newValue, ..}
instance Property "HTTPPort" VpcOriginEndpointConfigProperty where
  type PropertyType "HTTPPort" VpcOriginEndpointConfigProperty = Value Prelude.Integer
  set newValue VpcOriginEndpointConfigProperty {..}
    = VpcOriginEndpointConfigProperty
        {hTTPPort = Prelude.pure newValue, ..}
instance Property "HTTPSPort" VpcOriginEndpointConfigProperty where
  type PropertyType "HTTPSPort" VpcOriginEndpointConfigProperty = Value Prelude.Integer
  set newValue VpcOriginEndpointConfigProperty {..}
    = VpcOriginEndpointConfigProperty
        {hTTPSPort = Prelude.pure newValue, ..}
instance Property "Name" VpcOriginEndpointConfigProperty where
  type PropertyType "Name" VpcOriginEndpointConfigProperty = Value Prelude.Text
  set newValue VpcOriginEndpointConfigProperty {..}
    = VpcOriginEndpointConfigProperty {name = newValue, ..}
instance Property "OriginProtocolPolicy" VpcOriginEndpointConfigProperty where
  type PropertyType "OriginProtocolPolicy" VpcOriginEndpointConfigProperty = Value Prelude.Text
  set newValue VpcOriginEndpointConfigProperty {..}
    = VpcOriginEndpointConfigProperty
        {originProtocolPolicy = Prelude.pure newValue, ..}
instance Property "OriginSSLProtocols" VpcOriginEndpointConfigProperty where
  type PropertyType "OriginSSLProtocols" VpcOriginEndpointConfigProperty = ValueList Prelude.Text
  set newValue VpcOriginEndpointConfigProperty {..}
    = VpcOriginEndpointConfigProperty
        {originSSLProtocols = Prelude.pure newValue, ..}