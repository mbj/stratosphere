module Stratosphere.CloudFront.Distribution.OriginProperty (
        module Exports, OriginProperty(..), mkOriginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.CustomOriginConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginCustomHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginShieldProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.S3OriginConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.VpcOriginConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html>
    OriginProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-connectionattempts>
                    connectionAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-connectiontimeout>
                    connectionTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-customoriginconfig>
                    customOriginConfig :: (Prelude.Maybe CustomOriginConfigProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-domainname>
                    domainName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-id>
                    id :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-originaccesscontrolid>
                    originAccessControlId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-origincustomheaders>
                    originCustomHeaders :: (Prelude.Maybe [OriginCustomHeaderProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-originpath>
                    originPath :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-originshield>
                    originShield :: (Prelude.Maybe OriginShieldProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-responsecompletiontimeout>
                    responseCompletionTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-s3originconfig>
                    s3OriginConfig :: (Prelude.Maybe S3OriginConfigProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-vpcoriginconfig>
                    vpcOriginConfig :: (Prelude.Maybe VpcOriginConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OriginProperty
mkOriginProperty domainName id
  = OriginProperty
      {haddock_workaround_ = (), domainName = domainName, id = id,
       connectionAttempts = Prelude.Nothing,
       connectionTimeout = Prelude.Nothing,
       customOriginConfig = Prelude.Nothing,
       originAccessControlId = Prelude.Nothing,
       originCustomHeaders = Prelude.Nothing,
       originPath = Prelude.Nothing, originShield = Prelude.Nothing,
       responseCompletionTimeout = Prelude.Nothing,
       s3OriginConfig = Prelude.Nothing,
       vpcOriginConfig = Prelude.Nothing}
instance ToResourceProperties OriginProperty where
  toResourceProperties OriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Origin",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName, "Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionAttempts" Prelude.<$> connectionAttempts,
                               (JSON..=) "ConnectionTimeout" Prelude.<$> connectionTimeout,
                               (JSON..=) "CustomOriginConfig" Prelude.<$> customOriginConfig,
                               (JSON..=) "OriginAccessControlId"
                                 Prelude.<$> originAccessControlId,
                               (JSON..=) "OriginCustomHeaders" Prelude.<$> originCustomHeaders,
                               (JSON..=) "OriginPath" Prelude.<$> originPath,
                               (JSON..=) "OriginShield" Prelude.<$> originShield,
                               (JSON..=) "ResponseCompletionTimeout"
                                 Prelude.<$> responseCompletionTimeout,
                               (JSON..=) "S3OriginConfig" Prelude.<$> s3OriginConfig,
                               (JSON..=) "VpcOriginConfig" Prelude.<$> vpcOriginConfig]))}
instance JSON.ToJSON OriginProperty where
  toJSON OriginProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName, "Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionAttempts" Prelude.<$> connectionAttempts,
                  (JSON..=) "ConnectionTimeout" Prelude.<$> connectionTimeout,
                  (JSON..=) "CustomOriginConfig" Prelude.<$> customOriginConfig,
                  (JSON..=) "OriginAccessControlId"
                    Prelude.<$> originAccessControlId,
                  (JSON..=) "OriginCustomHeaders" Prelude.<$> originCustomHeaders,
                  (JSON..=) "OriginPath" Prelude.<$> originPath,
                  (JSON..=) "OriginShield" Prelude.<$> originShield,
                  (JSON..=) "ResponseCompletionTimeout"
                    Prelude.<$> responseCompletionTimeout,
                  (JSON..=) "S3OriginConfig" Prelude.<$> s3OriginConfig,
                  (JSON..=) "VpcOriginConfig" Prelude.<$> vpcOriginConfig])))
instance Property "ConnectionAttempts" OriginProperty where
  type PropertyType "ConnectionAttempts" OriginProperty = Value Prelude.Integer
  set newValue OriginProperty {..}
    = OriginProperty {connectionAttempts = Prelude.pure newValue, ..}
instance Property "ConnectionTimeout" OriginProperty where
  type PropertyType "ConnectionTimeout" OriginProperty = Value Prelude.Integer
  set newValue OriginProperty {..}
    = OriginProperty {connectionTimeout = Prelude.pure newValue, ..}
instance Property "CustomOriginConfig" OriginProperty where
  type PropertyType "CustomOriginConfig" OriginProperty = CustomOriginConfigProperty
  set newValue OriginProperty {..}
    = OriginProperty {customOriginConfig = Prelude.pure newValue, ..}
instance Property "DomainName" OriginProperty where
  type PropertyType "DomainName" OriginProperty = Value Prelude.Text
  set newValue OriginProperty {..}
    = OriginProperty {domainName = newValue, ..}
instance Property "Id" OriginProperty where
  type PropertyType "Id" OriginProperty = Value Prelude.Text
  set newValue OriginProperty {..}
    = OriginProperty {id = newValue, ..}
instance Property "OriginAccessControlId" OriginProperty where
  type PropertyType "OriginAccessControlId" OriginProperty = Value Prelude.Text
  set newValue OriginProperty {..}
    = OriginProperty
        {originAccessControlId = Prelude.pure newValue, ..}
instance Property "OriginCustomHeaders" OriginProperty where
  type PropertyType "OriginCustomHeaders" OriginProperty = [OriginCustomHeaderProperty]
  set newValue OriginProperty {..}
    = OriginProperty {originCustomHeaders = Prelude.pure newValue, ..}
instance Property "OriginPath" OriginProperty where
  type PropertyType "OriginPath" OriginProperty = Value Prelude.Text
  set newValue OriginProperty {..}
    = OriginProperty {originPath = Prelude.pure newValue, ..}
instance Property "OriginShield" OriginProperty where
  type PropertyType "OriginShield" OriginProperty = OriginShieldProperty
  set newValue OriginProperty {..}
    = OriginProperty {originShield = Prelude.pure newValue, ..}
instance Property "ResponseCompletionTimeout" OriginProperty where
  type PropertyType "ResponseCompletionTimeout" OriginProperty = Value Prelude.Integer
  set newValue OriginProperty {..}
    = OriginProperty
        {responseCompletionTimeout = Prelude.pure newValue, ..}
instance Property "S3OriginConfig" OriginProperty where
  type PropertyType "S3OriginConfig" OriginProperty = S3OriginConfigProperty
  set newValue OriginProperty {..}
    = OriginProperty {s3OriginConfig = Prelude.pure newValue, ..}
instance Property "VpcOriginConfig" OriginProperty where
  type PropertyType "VpcOriginConfig" OriginProperty = VpcOriginConfigProperty
  set newValue OriginProperty {..}
    = OriginProperty {vpcOriginConfig = Prelude.pure newValue, ..}