module Stratosphere.CloudFront.Distribution.CacheBehaviorProperty (
        module Exports, CacheBehaviorProperty(..), mkCacheBehaviorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.ForwardedValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.FunctionAssociationProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.GrpcConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.LambdaFunctionAssociationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CacheBehaviorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html>
    CacheBehaviorProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-allowedmethods>
                           allowedMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-cachepolicyid>
                           cachePolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-cachedmethods>
                           cachedMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-compress>
                           compress :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-defaultttl>
                           defaultTTL :: (Prelude.Maybe (Value Prelude.Double)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-fieldlevelencryptionid>
                           fieldLevelEncryptionId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-forwardedvalues>
                           forwardedValues :: (Prelude.Maybe ForwardedValuesProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-functionassociations>
                           functionAssociations :: (Prelude.Maybe [FunctionAssociationProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-grpcconfig>
                           grpcConfig :: (Prelude.Maybe GrpcConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-lambdafunctionassociations>
                           lambdaFunctionAssociations :: (Prelude.Maybe [LambdaFunctionAssociationProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-maxttl>
                           maxTTL :: (Prelude.Maybe (Value Prelude.Double)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-minttl>
                           minTTL :: (Prelude.Maybe (Value Prelude.Double)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-originrequestpolicyid>
                           originRequestPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-pathpattern>
                           pathPattern :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-realtimelogconfigarn>
                           realtimeLogConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-responseheaderspolicyid>
                           responseHeadersPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-smoothstreaming>
                           smoothStreaming :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-targetoriginid>
                           targetOriginId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-trustedkeygroups>
                           trustedKeyGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-trustedsigners>
                           trustedSigners :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-viewerprotocolpolicy>
                           viewerProtocolPolicy :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCacheBehaviorProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CacheBehaviorProperty
mkCacheBehaviorProperty
  pathPattern
  targetOriginId
  viewerProtocolPolicy
  = CacheBehaviorProperty
      {haddock_workaround_ = (), pathPattern = pathPattern,
       targetOriginId = targetOriginId,
       viewerProtocolPolicy = viewerProtocolPolicy,
       allowedMethods = Prelude.Nothing, cachePolicyId = Prelude.Nothing,
       cachedMethods = Prelude.Nothing, compress = Prelude.Nothing,
       defaultTTL = Prelude.Nothing,
       fieldLevelEncryptionId = Prelude.Nothing,
       forwardedValues = Prelude.Nothing,
       functionAssociations = Prelude.Nothing,
       grpcConfig = Prelude.Nothing,
       lambdaFunctionAssociations = Prelude.Nothing,
       maxTTL = Prelude.Nothing, minTTL = Prelude.Nothing,
       originRequestPolicyId = Prelude.Nothing,
       realtimeLogConfigArn = Prelude.Nothing,
       responseHeadersPolicyId = Prelude.Nothing,
       smoothStreaming = Prelude.Nothing,
       trustedKeyGroups = Prelude.Nothing,
       trustedSigners = Prelude.Nothing}
instance ToResourceProperties CacheBehaviorProperty where
  toResourceProperties CacheBehaviorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.CacheBehavior",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PathPattern" JSON..= pathPattern,
                            "TargetOriginId" JSON..= targetOriginId,
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
                               (JSON..=) "GrpcConfig" Prelude.<$> grpcConfig,
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
instance JSON.ToJSON CacheBehaviorProperty where
  toJSON CacheBehaviorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PathPattern" JSON..= pathPattern,
               "TargetOriginId" JSON..= targetOriginId,
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
                  (JSON..=) "GrpcConfig" Prelude.<$> grpcConfig,
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
instance Property "AllowedMethods" CacheBehaviorProperty where
  type PropertyType "AllowedMethods" CacheBehaviorProperty = ValueList Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {allowedMethods = Prelude.pure newValue, ..}
instance Property "CachePolicyId" CacheBehaviorProperty where
  type PropertyType "CachePolicyId" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {cachePolicyId = Prelude.pure newValue, ..}
instance Property "CachedMethods" CacheBehaviorProperty where
  type PropertyType "CachedMethods" CacheBehaviorProperty = ValueList Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {cachedMethods = Prelude.pure newValue, ..}
instance Property "Compress" CacheBehaviorProperty where
  type PropertyType "Compress" CacheBehaviorProperty = Value Prelude.Bool
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {compress = Prelude.pure newValue, ..}
instance Property "DefaultTTL" CacheBehaviorProperty where
  type PropertyType "DefaultTTL" CacheBehaviorProperty = Value Prelude.Double
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {defaultTTL = Prelude.pure newValue, ..}
instance Property "FieldLevelEncryptionId" CacheBehaviorProperty where
  type PropertyType "FieldLevelEncryptionId" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {fieldLevelEncryptionId = Prelude.pure newValue, ..}
instance Property "ForwardedValues" CacheBehaviorProperty where
  type PropertyType "ForwardedValues" CacheBehaviorProperty = ForwardedValuesProperty
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {forwardedValues = Prelude.pure newValue, ..}
instance Property "FunctionAssociations" CacheBehaviorProperty where
  type PropertyType "FunctionAssociations" CacheBehaviorProperty = [FunctionAssociationProperty]
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {functionAssociations = Prelude.pure newValue, ..}
instance Property "GrpcConfig" CacheBehaviorProperty where
  type PropertyType "GrpcConfig" CacheBehaviorProperty = GrpcConfigProperty
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {grpcConfig = Prelude.pure newValue, ..}
instance Property "LambdaFunctionAssociations" CacheBehaviorProperty where
  type PropertyType "LambdaFunctionAssociations" CacheBehaviorProperty = [LambdaFunctionAssociationProperty]
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {lambdaFunctionAssociations = Prelude.pure newValue, ..}
instance Property "MaxTTL" CacheBehaviorProperty where
  type PropertyType "MaxTTL" CacheBehaviorProperty = Value Prelude.Double
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {maxTTL = Prelude.pure newValue, ..}
instance Property "MinTTL" CacheBehaviorProperty where
  type PropertyType "MinTTL" CacheBehaviorProperty = Value Prelude.Double
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {minTTL = Prelude.pure newValue, ..}
instance Property "OriginRequestPolicyId" CacheBehaviorProperty where
  type PropertyType "OriginRequestPolicyId" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {originRequestPolicyId = Prelude.pure newValue, ..}
instance Property "PathPattern" CacheBehaviorProperty where
  type PropertyType "PathPattern" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {pathPattern = newValue, ..}
instance Property "RealtimeLogConfigArn" CacheBehaviorProperty where
  type PropertyType "RealtimeLogConfigArn" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {realtimeLogConfigArn = Prelude.pure newValue, ..}
instance Property "ResponseHeadersPolicyId" CacheBehaviorProperty where
  type PropertyType "ResponseHeadersPolicyId" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {responseHeadersPolicyId = Prelude.pure newValue, ..}
instance Property "SmoothStreaming" CacheBehaviorProperty where
  type PropertyType "SmoothStreaming" CacheBehaviorProperty = Value Prelude.Bool
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {smoothStreaming = Prelude.pure newValue, ..}
instance Property "TargetOriginId" CacheBehaviorProperty where
  type PropertyType "TargetOriginId" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {targetOriginId = newValue, ..}
instance Property "TrustedKeyGroups" CacheBehaviorProperty where
  type PropertyType "TrustedKeyGroups" CacheBehaviorProperty = ValueList Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {trustedKeyGroups = Prelude.pure newValue, ..}
instance Property "TrustedSigners" CacheBehaviorProperty where
  type PropertyType "TrustedSigners" CacheBehaviorProperty = ValueList Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty
        {trustedSigners = Prelude.pure newValue, ..}
instance Property "ViewerProtocolPolicy" CacheBehaviorProperty where
  type PropertyType "ViewerProtocolPolicy" CacheBehaviorProperty = Value Prelude.Text
  set newValue CacheBehaviorProperty {..}
    = CacheBehaviorProperty {viewerProtocolPolicy = newValue, ..}