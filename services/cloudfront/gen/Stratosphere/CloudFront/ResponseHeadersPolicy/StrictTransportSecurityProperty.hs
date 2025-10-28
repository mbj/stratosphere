module Stratosphere.CloudFront.ResponseHeadersPolicy.StrictTransportSecurityProperty (
        StrictTransportSecurityProperty(..),
        mkStrictTransportSecurityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StrictTransportSecurityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-stricttransportsecurity.html>
    StrictTransportSecurityProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-stricttransportsecurity.html#cfn-cloudfront-responseheaderspolicy-stricttransportsecurity-accesscontrolmaxagesec>
                                     accessControlMaxAgeSec :: (Value Prelude.Integer),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-stricttransportsecurity.html#cfn-cloudfront-responseheaderspolicy-stricttransportsecurity-includesubdomains>
                                     includeSubdomains :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-stricttransportsecurity.html#cfn-cloudfront-responseheaderspolicy-stricttransportsecurity-override>
                                     override :: (Value Prelude.Bool),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-stricttransportsecurity.html#cfn-cloudfront-responseheaderspolicy-stricttransportsecurity-preload>
                                     preload :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStrictTransportSecurityProperty ::
  Value Prelude.Integer
  -> Value Prelude.Bool -> StrictTransportSecurityProperty
mkStrictTransportSecurityProperty accessControlMaxAgeSec override
  = StrictTransportSecurityProperty
      {haddock_workaround_ = (),
       accessControlMaxAgeSec = accessControlMaxAgeSec,
       override = override, includeSubdomains = Prelude.Nothing,
       preload = Prelude.Nothing}
instance ToResourceProperties StrictTransportSecurityProperty where
  toResourceProperties StrictTransportSecurityProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.StrictTransportSecurity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessControlMaxAgeSec" JSON..= accessControlMaxAgeSec,
                            "Override" JSON..= override]
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeSubdomains" Prelude.<$> includeSubdomains,
                               (JSON..=) "Preload" Prelude.<$> preload]))}
instance JSON.ToJSON StrictTransportSecurityProperty where
  toJSON StrictTransportSecurityProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessControlMaxAgeSec" JSON..= accessControlMaxAgeSec,
               "Override" JSON..= override]
              (Prelude.catMaybes
                 [(JSON..=) "IncludeSubdomains" Prelude.<$> includeSubdomains,
                  (JSON..=) "Preload" Prelude.<$> preload])))
instance Property "AccessControlMaxAgeSec" StrictTransportSecurityProperty where
  type PropertyType "AccessControlMaxAgeSec" StrictTransportSecurityProperty = Value Prelude.Integer
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty
        {accessControlMaxAgeSec = newValue, ..}
instance Property "IncludeSubdomains" StrictTransportSecurityProperty where
  type PropertyType "IncludeSubdomains" StrictTransportSecurityProperty = Value Prelude.Bool
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty
        {includeSubdomains = Prelude.pure newValue, ..}
instance Property "Override" StrictTransportSecurityProperty where
  type PropertyType "Override" StrictTransportSecurityProperty = Value Prelude.Bool
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty {override = newValue, ..}
instance Property "Preload" StrictTransportSecurityProperty where
  type PropertyType "Preload" StrictTransportSecurityProperty = Value Prelude.Bool
  set newValue StrictTransportSecurityProperty {..}
    = StrictTransportSecurityProperty
        {preload = Prelude.pure newValue, ..}