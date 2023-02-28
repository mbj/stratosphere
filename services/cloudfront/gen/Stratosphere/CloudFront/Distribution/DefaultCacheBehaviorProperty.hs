module Stratosphere.CloudFront.Distribution.DefaultCacheBehaviorProperty (
        module Exports, DefaultCacheBehaviorProperty(..),
        mkDefaultCacheBehaviorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.ForwardedValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.FunctionAssociationProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.LambdaFunctionAssociationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultCacheBehaviorProperty
  = DefaultCacheBehaviorProperty {allowedMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  cachePolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  cachedMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  compress :: (Prelude.Maybe (Value Prelude.Bool)),
                                  defaultTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                  fieldLevelEncryptionId :: (Prelude.Maybe (Value Prelude.Text)),
                                  forwardedValues :: (Prelude.Maybe ForwardedValuesProperty),
                                  functionAssociations :: (Prelude.Maybe [FunctionAssociationProperty]),
                                  lambdaFunctionAssociations :: (Prelude.Maybe [LambdaFunctionAssociationProperty]),
                                  maxTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                  minTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                  originRequestPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  realtimeLogConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  responseHeadersPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  smoothStreaming :: (Prelude.Maybe (Value Prelude.Bool)),
                                  targetOriginId :: (Value Prelude.Text),
                                  trustedKeyGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  trustedSigners :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  viewerProtocolPolicy :: (Value Prelude.Text)}
mkDefaultCacheBehaviorProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DefaultCacheBehaviorProperty
mkDefaultCacheBehaviorProperty targetOriginId viewerProtocolPolicy
  = DefaultCacheBehaviorProperty
      {targetOriginId = targetOriginId,
       viewerProtocolPolicy = viewerProtocolPolicy,
       allowedMethods = Prelude.Nothing, cachePolicyId = Prelude.Nothing,
       cachedMethods = Prelude.Nothing, compress = Prelude.Nothing,
       defaultTTL = Prelude.Nothing,
       fieldLevelEncryptionId = Prelude.Nothing,
       forwardedValues = Prelude.Nothing,
       functionAssociations = Prelude.Nothing,
       lambdaFunctionAssociations = Prelude.Nothing,
       maxTTL = Prelude.Nothing, minTTL = Prelude.Nothing,
       originRequestPolicyId = Prelude.Nothing,
       realtimeLogConfigArn = Prelude.Nothing,
       responseHeadersPolicyId = Prelude.Nothing,
       smoothStreaming = Prelude.Nothing,
       trustedKeyGroups = Prelude.Nothing,
       trustedSigners = Prelude.Nothing}
instance ToResourceProperties DefaultCacheBehaviorProperty where
  toResourceProperties DefaultCacheBehaviorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.DefaultCacheBehavior",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetOriginId" JSON..= targetOriginId,
                            "ViewerProtocolPolicy" JSON..= viewerProtocolPolicy]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedMethods" Prelude.<$> allowedMethods,
                               (JSON..=) "CachePolicyId" Prelude.<$> cachePolicyId,
                               (JSON..=) "CachedMethods" Prelude.<$> cachedMethods,
                               (JSON..=) "Compress" Prelude.<$> compress,
                               (JSON..=) "DefaultTTL" Prelude.<$> defaultTTL,
                               (JSON..=) "FieldLevelEncryptionId"
                                 Prelude.<$> fieldLevelEncryptionId,
                               (JSON..=) "ForwardedValues" Prelude.<$> forwardedValues,
                               (JSON..=) "FunctionAssociations" Prelude.<$> functionAssociations,
                               (JSON..=) "LambdaFunctionAssociations"
                                 Prelude.<$> lambdaFunctionAssociations,
                               (JSON..=) "MaxTTL" Prelude.<$> maxTTL,
                               (JSON..=) "MinTTL" Prelude.<$> minTTL,
                               (JSON..=) "OriginRequestPolicyId"
                                 Prelude.<$> originRequestPolicyId,
                               (JSON..=) "RealtimeLogConfigArn" Prelude.<$> realtimeLogConfigArn,
                               (JSON..=) "ResponseHeadersPolicyId"
                                 Prelude.<$> responseHeadersPolicyId,
                               (JSON..=) "SmoothStreaming" Prelude.<$> smoothStreaming,
                               (JSON..=) "TrustedKeyGroups" Prelude.<$> trustedKeyGroups,
                               (JSON..=) "TrustedSigners" Prelude.<$> trustedSigners]))}
instance JSON.ToJSON DefaultCacheBehaviorProperty where
  toJSON DefaultCacheBehaviorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetOriginId" JSON..= targetOriginId,
               "ViewerProtocolPolicy" JSON..= viewerProtocolPolicy]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedMethods" Prelude.<$> allowedMethods,
                  (JSON..=) "CachePolicyId" Prelude.<$> cachePolicyId,
                  (JSON..=) "CachedMethods" Prelude.<$> cachedMethods,
                  (JSON..=) "Compress" Prelude.<$> compress,
                  (JSON..=) "DefaultTTL" Prelude.<$> defaultTTL,
                  (JSON..=) "FieldLevelEncryptionId"
                    Prelude.<$> fieldLevelEncryptionId,
                  (JSON..=) "ForwardedValues" Prelude.<$> forwardedValues,
                  (JSON..=) "FunctionAssociations" Prelude.<$> functionAssociations,
                  (JSON..=) "LambdaFunctionAssociations"
                    Prelude.<$> lambdaFunctionAssociations,
                  (JSON..=) "MaxTTL" Prelude.<$> maxTTL,
                  (JSON..=) "MinTTL" Prelude.<$> minTTL,
                  (JSON..=) "OriginRequestPolicyId"
                    Prelude.<$> originRequestPolicyId,
                  (JSON..=) "RealtimeLogConfigArn" Prelude.<$> realtimeLogConfigArn,
                  (JSON..=) "ResponseHeadersPolicyId"
                    Prelude.<$> responseHeadersPolicyId,
                  (JSON..=) "SmoothStreaming" Prelude.<$> smoothStreaming,
                  (JSON..=) "TrustedKeyGroups" Prelude.<$> trustedKeyGroups,
                  (JSON..=) "TrustedSigners" Prelude.<$> trustedSigners])))
instance Property "AllowedMethods" DefaultCacheBehaviorProperty where
  type PropertyType "AllowedMethods" DefaultCacheBehaviorProperty = ValueList Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {allowedMethods = Prelude.pure newValue, ..}
instance Property "CachePolicyId" DefaultCacheBehaviorProperty where
  type PropertyType "CachePolicyId" DefaultCacheBehaviorProperty = Value Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {cachePolicyId = Prelude.pure newValue, ..}
instance Property "CachedMethods" DefaultCacheBehaviorProperty where
  type PropertyType "CachedMethods" DefaultCacheBehaviorProperty = ValueList Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {cachedMethods = Prelude.pure newValue, ..}
instance Property "Compress" DefaultCacheBehaviorProperty where
  type PropertyType "Compress" DefaultCacheBehaviorProperty = Value Prelude.Bool
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {compress = Prelude.pure newValue, ..}
instance Property "DefaultTTL" DefaultCacheBehaviorProperty where
  type PropertyType "DefaultTTL" DefaultCacheBehaviorProperty = Value Prelude.Double
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {defaultTTL = Prelude.pure newValue, ..}
instance Property "FieldLevelEncryptionId" DefaultCacheBehaviorProperty where
  type PropertyType "FieldLevelEncryptionId" DefaultCacheBehaviorProperty = Value Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {fieldLevelEncryptionId = Prelude.pure newValue, ..}
instance Property "ForwardedValues" DefaultCacheBehaviorProperty where
  type PropertyType "ForwardedValues" DefaultCacheBehaviorProperty = ForwardedValuesProperty
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {forwardedValues = Prelude.pure newValue, ..}
instance Property "FunctionAssociations" DefaultCacheBehaviorProperty where
  type PropertyType "FunctionAssociations" DefaultCacheBehaviorProperty = [FunctionAssociationProperty]
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {functionAssociations = Prelude.pure newValue, ..}
instance Property "LambdaFunctionAssociations" DefaultCacheBehaviorProperty where
  type PropertyType "LambdaFunctionAssociations" DefaultCacheBehaviorProperty = [LambdaFunctionAssociationProperty]
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {lambdaFunctionAssociations = Prelude.pure newValue, ..}
instance Property "MaxTTL" DefaultCacheBehaviorProperty where
  type PropertyType "MaxTTL" DefaultCacheBehaviorProperty = Value Prelude.Double
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty {maxTTL = Prelude.pure newValue, ..}
instance Property "MinTTL" DefaultCacheBehaviorProperty where
  type PropertyType "MinTTL" DefaultCacheBehaviorProperty = Value Prelude.Double
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty {minTTL = Prelude.pure newValue, ..}
instance Property "OriginRequestPolicyId" DefaultCacheBehaviorProperty where
  type PropertyType "OriginRequestPolicyId" DefaultCacheBehaviorProperty = Value Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {originRequestPolicyId = Prelude.pure newValue, ..}
instance Property "RealtimeLogConfigArn" DefaultCacheBehaviorProperty where
  type PropertyType "RealtimeLogConfigArn" DefaultCacheBehaviorProperty = Value Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {realtimeLogConfigArn = Prelude.pure newValue, ..}
instance Property "ResponseHeadersPolicyId" DefaultCacheBehaviorProperty where
  type PropertyType "ResponseHeadersPolicyId" DefaultCacheBehaviorProperty = Value Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {responseHeadersPolicyId = Prelude.pure newValue, ..}
instance Property "SmoothStreaming" DefaultCacheBehaviorProperty where
  type PropertyType "SmoothStreaming" DefaultCacheBehaviorProperty = Value Prelude.Bool
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {smoothStreaming = Prelude.pure newValue, ..}
instance Property "TargetOriginId" DefaultCacheBehaviorProperty where
  type PropertyType "TargetOriginId" DefaultCacheBehaviorProperty = Value Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty {targetOriginId = newValue, ..}
instance Property "TrustedKeyGroups" DefaultCacheBehaviorProperty where
  type PropertyType "TrustedKeyGroups" DefaultCacheBehaviorProperty = ValueList Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {trustedKeyGroups = Prelude.pure newValue, ..}
instance Property "TrustedSigners" DefaultCacheBehaviorProperty where
  type PropertyType "TrustedSigners" DefaultCacheBehaviorProperty = ValueList Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {trustedSigners = Prelude.pure newValue, ..}
instance Property "ViewerProtocolPolicy" DefaultCacheBehaviorProperty where
  type PropertyType "ViewerProtocolPolicy" DefaultCacheBehaviorProperty = Value Prelude.Text
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {viewerProtocolPolicy = newValue, ..}