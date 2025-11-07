module Stratosphere.CloudFront.Distribution.DefaultCacheBehaviorProperty (
        module Exports, DefaultCacheBehaviorProperty(..),
        mkDefaultCacheBehaviorProperty
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
data DefaultCacheBehaviorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html>
    DefaultCacheBehaviorProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-allowedmethods>
                                  allowedMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-cachepolicyid>
                                  cachePolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-cachedmethods>
                                  cachedMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-compress>
                                  compress :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-defaultttl>
                                  defaultTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-fieldlevelencryptionid>
                                  fieldLevelEncryptionId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-forwardedvalues>
                                  forwardedValues :: (Prelude.Maybe ForwardedValuesProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-functionassociations>
                                  functionAssociations :: (Prelude.Maybe [FunctionAssociationProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-grpcconfig>
                                  grpcConfig :: (Prelude.Maybe GrpcConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-lambdafunctionassociations>
                                  lambdaFunctionAssociations :: (Prelude.Maybe [LambdaFunctionAssociationProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-maxttl>
                                  maxTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-minttl>
                                  minTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-originrequestpolicyid>
                                  originRequestPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-realtimelogconfigarn>
                                  realtimeLogConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-responseheaderspolicyid>
                                  responseHeadersPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-smoothstreaming>
                                  smoothStreaming :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-targetoriginid>
                                  targetOriginId :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-trustedkeygroups>
                                  trustedKeyGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-trustedsigners>
                                  trustedSigners :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-viewerprotocolpolicy>
                                  viewerProtocolPolicy :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultCacheBehaviorProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DefaultCacheBehaviorProperty
mkDefaultCacheBehaviorProperty targetOriginId viewerProtocolPolicy
  = DefaultCacheBehaviorProperty
      {haddock_workaround_ = (), targetOriginId = targetOriginId,
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
instance Property "GrpcConfig" DefaultCacheBehaviorProperty where
  type PropertyType "GrpcConfig" DefaultCacheBehaviorProperty = GrpcConfigProperty
  set newValue DefaultCacheBehaviorProperty {..}
    = DefaultCacheBehaviorProperty
        {grpcConfig = Prelude.pure newValue, ..}
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