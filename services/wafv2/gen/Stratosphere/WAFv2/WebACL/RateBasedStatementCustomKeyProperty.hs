module Stratosphere.WAFv2.WebACL.RateBasedStatementCustomKeyProperty (
        module Exports, RateBasedStatementCustomKeyProperty(..),
        mkRateBasedStatementCustomKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RateLimitCookieProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RateLimitHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RateLimitLabelNamespaceProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RateLimitQueryArgumentProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RateLimitQueryStringProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RateLimitUriPathProperty as Exports
import Stratosphere.ResourceProperties
data RateBasedStatementCustomKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html>
    RateBasedStatementCustomKeyProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-cookie>
                                         cookie :: (Prelude.Maybe RateLimitCookieProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-forwardedip>
                                         forwardedIP :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-httpmethod>
                                         hTTPMethod :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-header>
                                         header :: (Prelude.Maybe RateLimitHeaderProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-ip>
                                         iP :: (Prelude.Maybe JSON.Object),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-labelnamespace>
                                         labelNamespace :: (Prelude.Maybe RateLimitLabelNamespaceProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-queryargument>
                                         queryArgument :: (Prelude.Maybe RateLimitQueryArgumentProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-querystring>
                                         queryString :: (Prelude.Maybe RateLimitQueryStringProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementcustomkey.html#cfn-wafv2-webacl-ratebasedstatementcustomkey-uripath>
                                         uriPath :: (Prelude.Maybe RateLimitUriPathProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateBasedStatementCustomKeyProperty ::
  RateBasedStatementCustomKeyProperty
mkRateBasedStatementCustomKeyProperty
  = RateBasedStatementCustomKeyProperty
      {haddock_workaround_ = (), cookie = Prelude.Nothing,
       forwardedIP = Prelude.Nothing, hTTPMethod = Prelude.Nothing,
       header = Prelude.Nothing, iP = Prelude.Nothing,
       labelNamespace = Prelude.Nothing, queryArgument = Prelude.Nothing,
       queryString = Prelude.Nothing, uriPath = Prelude.Nothing}
instance ToResourceProperties RateBasedStatementCustomKeyProperty where
  toResourceProperties RateBasedStatementCustomKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RateBasedStatementCustomKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cookie" Prelude.<$> cookie,
                            (JSON..=) "ForwardedIP" Prelude.<$> forwardedIP,
                            (JSON..=) "HTTPMethod" Prelude.<$> hTTPMethod,
                            (JSON..=) "Header" Prelude.<$> header,
                            (JSON..=) "IP" Prelude.<$> iP,
                            (JSON..=) "LabelNamespace" Prelude.<$> labelNamespace,
                            (JSON..=) "QueryArgument" Prelude.<$> queryArgument,
                            (JSON..=) "QueryString" Prelude.<$> queryString,
                            (JSON..=) "UriPath" Prelude.<$> uriPath])}
instance JSON.ToJSON RateBasedStatementCustomKeyProperty where
  toJSON RateBasedStatementCustomKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cookie" Prelude.<$> cookie,
               (JSON..=) "ForwardedIP" Prelude.<$> forwardedIP,
               (JSON..=) "HTTPMethod" Prelude.<$> hTTPMethod,
               (JSON..=) "Header" Prelude.<$> header,
               (JSON..=) "IP" Prelude.<$> iP,
               (JSON..=) "LabelNamespace" Prelude.<$> labelNamespace,
               (JSON..=) "QueryArgument" Prelude.<$> queryArgument,
               (JSON..=) "QueryString" Prelude.<$> queryString,
               (JSON..=) "UriPath" Prelude.<$> uriPath]))
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