module Stratosphere.CloudFront.Distribution.DistributionConfigProperty (
        module Exports, DistributionConfigProperty(..),
        mkDistributionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.CacheBehaviorProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.CustomErrorResponseProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.DefaultCacheBehaviorProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.LegacyCustomOriginProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.LegacyS3OriginProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.LoggingProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginGroupsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.RestrictionsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.ViewerCertificateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DistributionConfigProperty
  = DistributionConfigProperty {aliases :: (Prelude.Maybe (ValueList Prelude.Text)),
                                cNAMEs :: (Prelude.Maybe (ValueList Prelude.Text)),
                                cacheBehaviors :: (Prelude.Maybe [CacheBehaviorProperty]),
                                comment :: (Prelude.Maybe (Value Prelude.Text)),
                                continuousDeploymentPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                                customErrorResponses :: (Prelude.Maybe [CustomErrorResponseProperty]),
                                customOrigin :: (Prelude.Maybe LegacyCustomOriginProperty),
                                defaultCacheBehavior :: DefaultCacheBehaviorProperty,
                                defaultRootObject :: (Prelude.Maybe (Value Prelude.Text)),
                                enabled :: (Value Prelude.Bool),
                                httpVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                iPV6Enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                logging :: (Prelude.Maybe LoggingProperty),
                                originGroups :: (Prelude.Maybe OriginGroupsProperty),
                                origins :: (Prelude.Maybe [OriginProperty]),
                                priceClass :: (Prelude.Maybe (Value Prelude.Text)),
                                restrictions :: (Prelude.Maybe RestrictionsProperty),
                                s3Origin :: (Prelude.Maybe LegacyS3OriginProperty),
                                staging :: (Prelude.Maybe (Value Prelude.Bool)),
                                viewerCertificate :: (Prelude.Maybe ViewerCertificateProperty),
                                webACLId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDistributionConfigProperty ::
  DefaultCacheBehaviorProperty
  -> Value Prelude.Bool -> DistributionConfigProperty
mkDistributionConfigProperty defaultCacheBehavior enabled
  = DistributionConfigProperty
      {defaultCacheBehavior = defaultCacheBehavior, enabled = enabled,
       aliases = Prelude.Nothing, cNAMEs = Prelude.Nothing,
       cacheBehaviors = Prelude.Nothing, comment = Prelude.Nothing,
       continuousDeploymentPolicyId = Prelude.Nothing,
       customErrorResponses = Prelude.Nothing,
       customOrigin = Prelude.Nothing,
       defaultRootObject = Prelude.Nothing, httpVersion = Prelude.Nothing,
       iPV6Enabled = Prelude.Nothing, logging = Prelude.Nothing,
       originGroups = Prelude.Nothing, origins = Prelude.Nothing,
       priceClass = Prelude.Nothing, restrictions = Prelude.Nothing,
       s3Origin = Prelude.Nothing, staging = Prelude.Nothing,
       viewerCertificate = Prelude.Nothing, webACLId = Prelude.Nothing}
instance ToResourceProperties DistributionConfigProperty where
  toResourceProperties DistributionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.DistributionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultCacheBehavior" JSON..= defaultCacheBehavior,
                            "Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "Aliases" Prelude.<$> aliases,
                               (JSON..=) "CNAMEs" Prelude.<$> cNAMEs,
                               (JSON..=) "CacheBehaviors" Prelude.<$> cacheBehaviors,
                               (JSON..=) "Comment" Prelude.<$> comment,
                               (JSON..=) "ContinuousDeploymentPolicyId"
                                 Prelude.<$> continuousDeploymentPolicyId,
                               (JSON..=) "CustomErrorResponses" Prelude.<$> customErrorResponses,
                               (JSON..=) "CustomOrigin" Prelude.<$> customOrigin,
                               (JSON..=) "DefaultRootObject" Prelude.<$> defaultRootObject,
                               (JSON..=) "HttpVersion" Prelude.<$> httpVersion,
                               (JSON..=) "IPV6Enabled" Prelude.<$> iPV6Enabled,
                               (JSON..=) "Logging" Prelude.<$> logging,
                               (JSON..=) "OriginGroups" Prelude.<$> originGroups,
                               (JSON..=) "Origins" Prelude.<$> origins,
                               (JSON..=) "PriceClass" Prelude.<$> priceClass,
                               (JSON..=) "Restrictions" Prelude.<$> restrictions,
                               (JSON..=) "S3Origin" Prelude.<$> s3Origin,
                               (JSON..=) "Staging" Prelude.<$> staging,
                               (JSON..=) "ViewerCertificate" Prelude.<$> viewerCertificate,
                               (JSON..=) "WebACLId" Prelude.<$> webACLId]))}
instance JSON.ToJSON DistributionConfigProperty where
  toJSON DistributionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultCacheBehavior" JSON..= defaultCacheBehavior,
               "Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "Aliases" Prelude.<$> aliases,
                  (JSON..=) "CNAMEs" Prelude.<$> cNAMEs,
                  (JSON..=) "CacheBehaviors" Prelude.<$> cacheBehaviors,
                  (JSON..=) "Comment" Prelude.<$> comment,
                  (JSON..=) "ContinuousDeploymentPolicyId"
                    Prelude.<$> continuousDeploymentPolicyId,
                  (JSON..=) "CustomErrorResponses" Prelude.<$> customErrorResponses,
                  (JSON..=) "CustomOrigin" Prelude.<$> customOrigin,
                  (JSON..=) "DefaultRootObject" Prelude.<$> defaultRootObject,
                  (JSON..=) "HttpVersion" Prelude.<$> httpVersion,
                  (JSON..=) "IPV6Enabled" Prelude.<$> iPV6Enabled,
                  (JSON..=) "Logging" Prelude.<$> logging,
                  (JSON..=) "OriginGroups" Prelude.<$> originGroups,
                  (JSON..=) "Origins" Prelude.<$> origins,
                  (JSON..=) "PriceClass" Prelude.<$> priceClass,
                  (JSON..=) "Restrictions" Prelude.<$> restrictions,
                  (JSON..=) "S3Origin" Prelude.<$> s3Origin,
                  (JSON..=) "Staging" Prelude.<$> staging,
                  (JSON..=) "ViewerCertificate" Prelude.<$> viewerCertificate,
                  (JSON..=) "WebACLId" Prelude.<$> webACLId])))
instance Property "Aliases" DistributionConfigProperty where
  type PropertyType "Aliases" DistributionConfigProperty = ValueList Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {aliases = Prelude.pure newValue, ..}
instance Property "CNAMEs" DistributionConfigProperty where
  type PropertyType "CNAMEs" DistributionConfigProperty = ValueList Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {cNAMEs = Prelude.pure newValue, ..}
instance Property "CacheBehaviors" DistributionConfigProperty where
  type PropertyType "CacheBehaviors" DistributionConfigProperty = [CacheBehaviorProperty]
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {cacheBehaviors = Prelude.pure newValue, ..}
instance Property "Comment" DistributionConfigProperty where
  type PropertyType "Comment" DistributionConfigProperty = Value Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {comment = Prelude.pure newValue, ..}
instance Property "ContinuousDeploymentPolicyId" DistributionConfigProperty where
  type PropertyType "ContinuousDeploymentPolicyId" DistributionConfigProperty = Value Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {continuousDeploymentPolicyId = Prelude.pure newValue, ..}
instance Property "CustomErrorResponses" DistributionConfigProperty where
  type PropertyType "CustomErrorResponses" DistributionConfigProperty = [CustomErrorResponseProperty]
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {customErrorResponses = Prelude.pure newValue, ..}
instance Property "CustomOrigin" DistributionConfigProperty where
  type PropertyType "CustomOrigin" DistributionConfigProperty = LegacyCustomOriginProperty
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {customOrigin = Prelude.pure newValue, ..}
instance Property "DefaultCacheBehavior" DistributionConfigProperty where
  type PropertyType "DefaultCacheBehavior" DistributionConfigProperty = DefaultCacheBehaviorProperty
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {defaultCacheBehavior = newValue, ..}
instance Property "DefaultRootObject" DistributionConfigProperty where
  type PropertyType "DefaultRootObject" DistributionConfigProperty = Value Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {defaultRootObject = Prelude.pure newValue, ..}
instance Property "Enabled" DistributionConfigProperty where
  type PropertyType "Enabled" DistributionConfigProperty = Value Prelude.Bool
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {enabled = newValue, ..}
instance Property "HttpVersion" DistributionConfigProperty where
  type PropertyType "HttpVersion" DistributionConfigProperty = Value Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {httpVersion = Prelude.pure newValue, ..}
instance Property "IPV6Enabled" DistributionConfigProperty where
  type PropertyType "IPV6Enabled" DistributionConfigProperty = Value Prelude.Bool
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {iPV6Enabled = Prelude.pure newValue, ..}
instance Property "Logging" DistributionConfigProperty where
  type PropertyType "Logging" DistributionConfigProperty = LoggingProperty
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {logging = Prelude.pure newValue, ..}
instance Property "OriginGroups" DistributionConfigProperty where
  type PropertyType "OriginGroups" DistributionConfigProperty = OriginGroupsProperty
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {originGroups = Prelude.pure newValue, ..}
instance Property "Origins" DistributionConfigProperty where
  type PropertyType "Origins" DistributionConfigProperty = [OriginProperty]
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {origins = Prelude.pure newValue, ..}
instance Property "PriceClass" DistributionConfigProperty where
  type PropertyType "PriceClass" DistributionConfigProperty = Value Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {priceClass = Prelude.pure newValue, ..}
instance Property "Restrictions" DistributionConfigProperty where
  type PropertyType "Restrictions" DistributionConfigProperty = RestrictionsProperty
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {restrictions = Prelude.pure newValue, ..}
instance Property "S3Origin" DistributionConfigProperty where
  type PropertyType "S3Origin" DistributionConfigProperty = LegacyS3OriginProperty
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {s3Origin = Prelude.pure newValue, ..}
instance Property "Staging" DistributionConfigProperty where
  type PropertyType "Staging" DistributionConfigProperty = Value Prelude.Bool
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {staging = Prelude.pure newValue, ..}
instance Property "ViewerCertificate" DistributionConfigProperty where
  type PropertyType "ViewerCertificate" DistributionConfigProperty = ViewerCertificateProperty
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty
        {viewerCertificate = Prelude.pure newValue, ..}
instance Property "WebACLId" DistributionConfigProperty where
  type PropertyType "WebACLId" DistributionConfigProperty = Value Prelude.Text
  set newValue DistributionConfigProperty {..}
    = DistributionConfigProperty {webACLId = Prelude.pure newValue, ..}