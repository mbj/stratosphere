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
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginProperty
  = OriginProperty {connectionAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                    connectionTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                    customOriginConfig :: (Prelude.Maybe CustomOriginConfigProperty),
                    domainName :: (Value Prelude.Text),
                    id :: (Value Prelude.Text),
                    originAccessControlId :: (Prelude.Maybe (Value Prelude.Text)),
                    originCustomHeaders :: (Prelude.Maybe [OriginCustomHeaderProperty]),
                    originPath :: (Prelude.Maybe (Value Prelude.Text)),
                    originShield :: (Prelude.Maybe OriginShieldProperty),
                    s3OriginConfig :: (Prelude.Maybe S3OriginConfigProperty)}
mkOriginProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OriginProperty
mkOriginProperty domainName id
  = OriginProperty
      {domainName = domainName, id = id,
       connectionAttempts = Prelude.Nothing,
       connectionTimeout = Prelude.Nothing,
       customOriginConfig = Prelude.Nothing,
       originAccessControlId = Prelude.Nothing,
       originCustomHeaders = Prelude.Nothing,
       originPath = Prelude.Nothing, originShield = Prelude.Nothing,
       s3OriginConfig = Prelude.Nothing}
instance ToResourceProperties OriginProperty where
  toResourceProperties OriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Origin",
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
                               (JSON..=) "S3OriginConfig" Prelude.<$> s3OriginConfig]))}
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
                  (JSON..=) "S3OriginConfig" Prelude.<$> s3OriginConfig])))
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
instance Property "S3OriginConfig" OriginProperty where
  type PropertyType "S3OriginConfig" OriginProperty = S3OriginConfigProperty
  set newValue OriginProperty {..}
    = OriginProperty {s3OriginConfig = Prelude.pure newValue, ..}