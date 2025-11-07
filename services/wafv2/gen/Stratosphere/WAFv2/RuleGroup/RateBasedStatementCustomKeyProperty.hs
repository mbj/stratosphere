module Stratosphere.WAFv2.RuleGroup.RateBasedStatementCustomKeyProperty (
        module Exports, RateBasedStatementCustomKeyProperty(..),
        mkRateBasedStatementCustomKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitCookieProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitJA3FingerprintProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitJA4FingerprintProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitLabelNamespaceProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitQueryArgumentProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitQueryStringProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateLimitUriPathProperty as Exports
import Stratosphere.ResourceProperties
data RateBasedStatementCustomKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html>
    RateBasedStatementCustomKeyProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-asn>
                                         aSN :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-cookie>
                                         cookie :: (Prelude.Maybe RateLimitCookieProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-forwardedip>
                                         forwardedIP :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-httpmethod>
                                         hTTPMethod :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-header>
                                         header :: (Prelude.Maybe RateLimitHeaderProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-ip>
                                         iP :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-ja3fingerprint>
                                         jA3Fingerprint :: (Prelude.Maybe RateLimitJA3FingerprintProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-ja4fingerprint>
                                         jA4Fingerprint :: (Prelude.Maybe RateLimitJA4FingerprintProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-labelnamespace>
                                         labelNamespace :: (Prelude.Maybe RateLimitLabelNamespaceProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-queryargument>
                                         queryArgument :: (Prelude.Maybe RateLimitQueryArgumentProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-querystring>
                                         queryString :: (Prelude.Maybe RateLimitQueryStringProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementcustomkey.html#cfn-wafv2-rulegroup-ratebasedstatementcustomkey-uripath>
                                         uriPath :: (Prelude.Maybe RateLimitUriPathProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateBasedStatementCustomKeyProperty ::
  RateBasedStatementCustomKeyProperty
mkRateBasedStatementCustomKeyProperty
  = RateBasedStatementCustomKeyProperty
      {haddock_workaround_ = (), aSN = Prelude.Nothing,
       cookie = Prelude.Nothing, forwardedIP = Prelude.Nothing,
       hTTPMethod = Prelude.Nothing, header = Prelude.Nothing,
       iP = Prelude.Nothing, jA3Fingerprint = Prelude.Nothing,
       jA4Fingerprint = Prelude.Nothing, labelNamespace = Prelude.Nothing,
       queryArgument = Prelude.Nothing, queryString = Prelude.Nothing,
       uriPath = Prelude.Nothing}
instance ToResourceProperties RateBasedStatementCustomKeyProperty where
  toResourceProperties RateBasedStatementCustomKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.RateBasedStatementCustomKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ASN" Prelude.<$> aSN,
                            (JSON..=) "Cookie" Prelude.<$> cookie,
                            (JSON..=) "ForwardedIP" Prelude.<$> forwardedIP,
                            (JSON..=) "HTTPMethod" Prelude.<$> hTTPMethod,
                            (JSON..=) "Header" Prelude.<$> header,
                            (JSON..=) "IP" Prelude.<$> iP,
                            (JSON..=) "JA3Fingerprint" Prelude.<$> jA3Fingerprint,
                            (JSON..=) "JA4Fingerprint" Prelude.<$> jA4Fingerprint,
                            (JSON..=) "LabelNamespace" Prelude.<$> labelNamespace,
                            (JSON..=) "QueryArgument" Prelude.<$> queryArgument,
                            (JSON..=) "QueryString" Prelude.<$> queryString,
                            (JSON..=) "UriPath" Prelude.<$> uriPath])}
instance JSON.ToJSON RateBasedStatementCustomKeyProperty where
  toJSON RateBasedStatementCustomKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ASN" Prelude.<$> aSN,
               (JSON..=) "Cookie" Prelude.<$> cookie,
               (JSON..=) "ForwardedIP" Prelude.<$> forwardedIP,
               (JSON..=) "HTTPMethod" Prelude.<$> hTTPMethod,
               (JSON..=) "Header" Prelude.<$> header,
               (JSON..=) "IP" Prelude.<$> iP,
               (JSON..=) "JA3Fingerprint" Prelude.<$> jA3Fingerprint,
               (JSON..=) "JA4Fingerprint" Prelude.<$> jA4Fingerprint,
               (JSON..=) "LabelNamespace" Prelude.<$> labelNamespace,
               (JSON..=) "QueryArgument" Prelude.<$> queryArgument,
               (JSON..=) "QueryString" Prelude.<$> queryString,
               (JSON..=) "UriPath" Prelude.<$> uriPath]))
instance Property "ASN" RateBasedStatementCustomKeyProperty where
  type PropertyType "ASN" RateBasedStatementCustomKeyProperty = JSON.Object
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {aSN = Prelude.pure newValue, ..}
instance Property "Cookie" RateBasedStatementCustomKeyProperty where
  type PropertyType "Cookie" RateBasedStatementCustomKeyProperty = RateLimitCookieProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {cookie = Prelude.pure newValue, ..}
instance Property "ForwardedIP" RateBasedStatementCustomKeyProperty where
  type PropertyType "ForwardedIP" RateBasedStatementCustomKeyProperty = JSON.Object
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {forwardedIP = Prelude.pure newValue, ..}
instance Property "HTTPMethod" RateBasedStatementCustomKeyProperty where
  type PropertyType "HTTPMethod" RateBasedStatementCustomKeyProperty = JSON.Object
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {hTTPMethod = Prelude.pure newValue, ..}
instance Property "Header" RateBasedStatementCustomKeyProperty where
  type PropertyType "Header" RateBasedStatementCustomKeyProperty = RateLimitHeaderProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {header = Prelude.pure newValue, ..}
instance Property "IP" RateBasedStatementCustomKeyProperty where
  type PropertyType "IP" RateBasedStatementCustomKeyProperty = JSON.Object
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {iP = Prelude.pure newValue, ..}
instance Property "JA3Fingerprint" RateBasedStatementCustomKeyProperty where
  type PropertyType "JA3Fingerprint" RateBasedStatementCustomKeyProperty = RateLimitJA3FingerprintProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {jA3Fingerprint = Prelude.pure newValue, ..}
instance Property "JA4Fingerprint" RateBasedStatementCustomKeyProperty where
  type PropertyType "JA4Fingerprint" RateBasedStatementCustomKeyProperty = RateLimitJA4FingerprintProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {jA4Fingerprint = Prelude.pure newValue, ..}
instance Property "LabelNamespace" RateBasedStatementCustomKeyProperty where
  type PropertyType "LabelNamespace" RateBasedStatementCustomKeyProperty = RateLimitLabelNamespaceProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {labelNamespace = Prelude.pure newValue, ..}
instance Property "QueryArgument" RateBasedStatementCustomKeyProperty where
  type PropertyType "QueryArgument" RateBasedStatementCustomKeyProperty = RateLimitQueryArgumentProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {queryArgument = Prelude.pure newValue, ..}
instance Property "QueryString" RateBasedStatementCustomKeyProperty where
  type PropertyType "QueryString" RateBasedStatementCustomKeyProperty = RateLimitQueryStringProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {queryString = Prelude.pure newValue, ..}
instance Property "UriPath" RateBasedStatementCustomKeyProperty where
  type PropertyType "UriPath" RateBasedStatementCustomKeyProperty = RateLimitUriPathProperty
  set newValue RateBasedStatementCustomKeyProperty {..}
    = RateBasedStatementCustomKeyProperty
        {uriPath = Prelude.pure newValue, ..}