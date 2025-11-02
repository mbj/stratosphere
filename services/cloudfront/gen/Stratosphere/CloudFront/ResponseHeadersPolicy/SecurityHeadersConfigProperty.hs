module Stratosphere.CloudFront.ResponseHeadersPolicy.SecurityHeadersConfigProperty (
        module Exports, SecurityHeadersConfigProperty(..),
        mkSecurityHeadersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.ContentSecurityPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.ContentTypeOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.FrameOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.ReferrerPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.StrictTransportSecurityProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.XSSProtectionProperty as Exports
import Stratosphere.ResourceProperties
data SecurityHeadersConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html>
    SecurityHeadersConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-contentsecuritypolicy>
                                   contentSecurityPolicy :: (Prelude.Maybe ContentSecurityPolicyProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-contenttypeoptions>
                                   contentTypeOptions :: (Prelude.Maybe ContentTypeOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-frameoptions>
                                   frameOptions :: (Prelude.Maybe FrameOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-referrerpolicy>
                                   referrerPolicy :: (Prelude.Maybe ReferrerPolicyProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-stricttransportsecurity>
                                   strictTransportSecurity :: (Prelude.Maybe StrictTransportSecurityProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-securityheadersconfig.html#cfn-cloudfront-responseheaderspolicy-securityheadersconfig-xssprotection>
                                   xSSProtection :: (Prelude.Maybe XSSProtectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityHeadersConfigProperty :: SecurityHeadersConfigProperty
mkSecurityHeadersConfigProperty
  = SecurityHeadersConfigProperty
      {haddock_workaround_ = (), contentSecurityPolicy = Prelude.Nothing,
       contentTypeOptions = Prelude.Nothing,
       frameOptions = Prelude.Nothing, referrerPolicy = Prelude.Nothing,
       strictTransportSecurity = Prelude.Nothing,
       xSSProtection = Prelude.Nothing}
instance ToResourceProperties SecurityHeadersConfigProperty where
  toResourceProperties SecurityHeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.SecurityHeadersConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentSecurityPolicy"
                              Prelude.<$> contentSecurityPolicy,
                            (JSON..=) "ContentTypeOptions" Prelude.<$> contentTypeOptions,
                            (JSON..=) "FrameOptions" Prelude.<$> frameOptions,
                            (JSON..=) "ReferrerPolicy" Prelude.<$> referrerPolicy,
                            (JSON..=) "StrictTransportSecurity"
                              Prelude.<$> strictTransportSecurity,
                            (JSON..=) "XSSProtection" Prelude.<$> xSSProtection])}
instance JSON.ToJSON SecurityHeadersConfigProperty where
  toJSON SecurityHeadersConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentSecurityPolicy"
                 Prelude.<$> contentSecurityPolicy,
               (JSON..=) "ContentTypeOptions" Prelude.<$> contentTypeOptions,
               (JSON..=) "FrameOptions" Prelude.<$> frameOptions,
               (JSON..=) "ReferrerPolicy" Prelude.<$> referrerPolicy,
               (JSON..=) "StrictTransportSecurity"
                 Prelude.<$> strictTransportSecurity,
               (JSON..=) "XSSProtection" Prelude.<$> xSSProtection]))
instance Property "ContentSecurityPolicy" SecurityHeadersConfigProperty where
  type PropertyType "ContentSecurityPolicy" SecurityHeadersConfigProperty = ContentSecurityPolicyProperty
  set newValue SecurityHeadersConfigProperty {..}
    = SecurityHeadersConfigProperty
        {contentSecurityPolicy = Prelude.pure newValue, ..}
instance Property "ContentTypeOptions" SecurityHeadersConfigProperty where
  type PropertyType "ContentTypeOptions" SecurityHeadersConfigProperty = ContentTypeOptionsProperty
  set newValue SecurityHeadersConfigProperty {..}
    = SecurityHeadersConfigProperty
        {contentTypeOptions = Prelude.pure newValue, ..}
instance Property "FrameOptions" SecurityHeadersConfigProperty where
  type PropertyType "FrameOptions" SecurityHeadersConfigProperty = FrameOptionsProperty
  set newValue SecurityHeadersConfigProperty {..}
    = SecurityHeadersConfigProperty
        {frameOptions = Prelude.pure newValue, ..}
instance Property "ReferrerPolicy" SecurityHeadersConfigProperty where
  type PropertyType "ReferrerPolicy" SecurityHeadersConfigProperty = ReferrerPolicyProperty
  set newValue SecurityHeadersConfigProperty {..}
    = SecurityHeadersConfigProperty
        {referrerPolicy = Prelude.pure newValue, ..}
instance Property "StrictTransportSecurity" SecurityHeadersConfigProperty where
  type PropertyType "StrictTransportSecurity" SecurityHeadersConfigProperty = StrictTransportSecurityProperty
  set newValue SecurityHeadersConfigProperty {..}
    = SecurityHeadersConfigProperty
        {strictTransportSecurity = Prelude.pure newValue, ..}
instance Property "XSSProtection" SecurityHeadersConfigProperty where
  type PropertyType "XSSProtection" SecurityHeadersConfigProperty = XSSProtectionProperty
  set newValue SecurityHeadersConfigProperty {..}
    = SecurityHeadersConfigProperty
        {xSSProtection = Prelude.pure newValue, ..}