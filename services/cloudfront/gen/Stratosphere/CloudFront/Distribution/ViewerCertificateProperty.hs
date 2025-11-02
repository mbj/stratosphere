module Stratosphere.CloudFront.Distribution.ViewerCertificateProperty (
        ViewerCertificateProperty(..), mkViewerCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ViewerCertificateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html>
    ViewerCertificateProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-acmcertificatearn>
                               acmCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-cloudfrontdefaultcertificate>
                               cloudFrontDefaultCertificate :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-iamcertificateid>
                               iamCertificateId :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-minimumprotocolversion>
                               minimumProtocolVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-sslsupportmethod>
                               sslSupportMethod :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkViewerCertificateProperty :: ViewerCertificateProperty
mkViewerCertificateProperty
  = ViewerCertificateProperty
      {haddock_workaround_ = (), acmCertificateArn = Prelude.Nothing,
       cloudFrontDefaultCertificate = Prelude.Nothing,
       iamCertificateId = Prelude.Nothing,
       minimumProtocolVersion = Prelude.Nothing,
       sslSupportMethod = Prelude.Nothing}
instance ToResourceProperties ViewerCertificateProperty where
  toResourceProperties ViewerCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.ViewerCertificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcmCertificateArn" Prelude.<$> acmCertificateArn,
                            (JSON..=) "CloudFrontDefaultCertificate"
                              Prelude.<$> cloudFrontDefaultCertificate,
                            (JSON..=) "IamCertificateId" Prelude.<$> iamCertificateId,
                            (JSON..=) "MinimumProtocolVersion"
                              Prelude.<$> minimumProtocolVersion,
                            (JSON..=) "SslSupportMethod" Prelude.<$> sslSupportMethod])}
instance JSON.ToJSON ViewerCertificateProperty where
  toJSON ViewerCertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcmCertificateArn" Prelude.<$> acmCertificateArn,
               (JSON..=) "CloudFrontDefaultCertificate"
                 Prelude.<$> cloudFrontDefaultCertificate,
               (JSON..=) "IamCertificateId" Prelude.<$> iamCertificateId,
               (JSON..=) "MinimumProtocolVersion"
                 Prelude.<$> minimumProtocolVersion,
               (JSON..=) "SslSupportMethod" Prelude.<$> sslSupportMethod]))
instance Property "AcmCertificateArn" ViewerCertificateProperty where
  type PropertyType "AcmCertificateArn" ViewerCertificateProperty = Value Prelude.Text
  set newValue ViewerCertificateProperty {..}
    = ViewerCertificateProperty
        {acmCertificateArn = Prelude.pure newValue, ..}
instance Property "CloudFrontDefaultCertificate" ViewerCertificateProperty where
  type PropertyType "CloudFrontDefaultCertificate" ViewerCertificateProperty = Value Prelude.Bool
  set newValue ViewerCertificateProperty {..}
    = ViewerCertificateProperty
        {cloudFrontDefaultCertificate = Prelude.pure newValue, ..}
instance Property "IamCertificateId" ViewerCertificateProperty where
  type PropertyType "IamCertificateId" ViewerCertificateProperty = Value Prelude.Text
  set newValue ViewerCertificateProperty {..}
    = ViewerCertificateProperty
        {iamCertificateId = Prelude.pure newValue, ..}
instance Property "MinimumProtocolVersion" ViewerCertificateProperty where
  type PropertyType "MinimumProtocolVersion" ViewerCertificateProperty = Value Prelude.Text
  set newValue ViewerCertificateProperty {..}
    = ViewerCertificateProperty
        {minimumProtocolVersion = Prelude.pure newValue, ..}
instance Property "SslSupportMethod" ViewerCertificateProperty where
  type PropertyType "SslSupportMethod" ViewerCertificateProperty = Value Prelude.Text
  set newValue ViewerCertificateProperty {..}
    = ViewerCertificateProperty
        {sslSupportMethod = Prelude.pure newValue, ..}