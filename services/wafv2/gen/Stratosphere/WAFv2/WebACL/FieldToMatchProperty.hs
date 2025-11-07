module Stratosphere.WAFv2.WebACL.FieldToMatchProperty (
        module Exports, FieldToMatchProperty(..), mkFieldToMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.BodyProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CookiesProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.HeadersProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.JA3FingerprintProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.JA4FingerprintProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.JsonBodyProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.SingleHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.SingleQueryArgumentProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.UriFragmentProperty as Exports
import Stratosphere.ResourceProperties
data FieldToMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html>
    FieldToMatchProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-allqueryarguments>
                          allQueryArguments :: (Prelude.Maybe JSON.Object),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-body>
                          body :: (Prelude.Maybe BodyProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-cookies>
                          cookies :: (Prelude.Maybe CookiesProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-headers>
                          headers :: (Prelude.Maybe HeadersProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-ja3fingerprint>
                          jA3Fingerprint :: (Prelude.Maybe JA3FingerprintProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-ja4fingerprint>
                          jA4Fingerprint :: (Prelude.Maybe JA4FingerprintProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-jsonbody>
                          jsonBody :: (Prelude.Maybe JsonBodyProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-method>
                          method :: (Prelude.Maybe JSON.Object),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-querystring>
                          queryString :: (Prelude.Maybe JSON.Object),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singleheader>
                          singleHeader :: (Prelude.Maybe SingleHeaderProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singlequeryargument>
                          singleQueryArgument :: (Prelude.Maybe SingleQueryArgumentProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-urifragment>
                          uriFragment :: (Prelude.Maybe UriFragmentProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-uripath>
                          uriPath :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldToMatchProperty :: FieldToMatchProperty
mkFieldToMatchProperty
  = FieldToMatchProperty
      {haddock_workaround_ = (), allQueryArguments = Prelude.Nothing,
       body = Prelude.Nothing, cookies = Prelude.Nothing,
       headers = Prelude.Nothing, jA3Fingerprint = Prelude.Nothing,
       jA4Fingerprint = Prelude.Nothing, jsonBody = Prelude.Nothing,
       method = Prelude.Nothing, queryString = Prelude.Nothing,
       singleHeader = Prelude.Nothing,
       singleQueryArgument = Prelude.Nothing,
       uriFragment = Prelude.Nothing, uriPath = Prelude.Nothing}
instance ToResourceProperties FieldToMatchProperty where
  toResourceProperties FieldToMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.FieldToMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllQueryArguments" Prelude.<$> allQueryArguments,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "Cookies" Prelude.<$> cookies,
                            (JSON..=) "Headers" Prelude.<$> headers,
                            (JSON..=) "JA3Fingerprint" Prelude.<$> jA3Fingerprint,
                            (JSON..=) "JA4Fingerprint" Prelude.<$> jA4Fingerprint,
                            (JSON..=) "JsonBody" Prelude.<$> jsonBody,
                            (JSON..=) "Method" Prelude.<$> method,
                            (JSON..=) "QueryString" Prelude.<$> queryString,
                            (JSON..=) "SingleHeader" Prelude.<$> singleHeader,
                            (JSON..=) "SingleQueryArgument" Prelude.<$> singleQueryArgument,
                            (JSON..=) "UriFragment" Prelude.<$> uriFragment,
                            (JSON..=) "UriPath" Prelude.<$> uriPath])}
instance JSON.ToJSON FieldToMatchProperty where
  toJSON FieldToMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllQueryArguments" Prelude.<$> allQueryArguments,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "Cookies" Prelude.<$> cookies,
               (JSON..=) "Headers" Prelude.<$> headers,
               (JSON..=) "JA3Fingerprint" Prelude.<$> jA3Fingerprint,
               (JSON..=) "JA4Fingerprint" Prelude.<$> jA4Fingerprint,
               (JSON..=) "JsonBody" Prelude.<$> jsonBody,
               (JSON..=) "Method" Prelude.<$> method,
               (JSON..=) "QueryString" Prelude.<$> queryString,
               (JSON..=) "SingleHeader" Prelude.<$> singleHeader,
               (JSON..=) "SingleQueryArgument" Prelude.<$> singleQueryArgument,
               (JSON..=) "UriFragment" Prelude.<$> uriFragment,
               (JSON..=) "UriPath" Prelude.<$> uriPath]))
instance Property "AllQueryArguments" FieldToMatchProperty where
  type PropertyType "AllQueryArguments" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty
        {allQueryArguments = Prelude.pure newValue, ..}
instance Property "Body" FieldToMatchProperty where
  type PropertyType "Body" FieldToMatchProperty = BodyProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {body = Prelude.pure newValue, ..}
instance Property "Cookies" FieldToMatchProperty where
  type PropertyType "Cookies" FieldToMatchProperty = CookiesProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {cookies = Prelude.pure newValue, ..}
instance Property "Headers" FieldToMatchProperty where
  type PropertyType "Headers" FieldToMatchProperty = HeadersProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {headers = Prelude.pure newValue, ..}
instance Property "JA3Fingerprint" FieldToMatchProperty where
  type PropertyType "JA3Fingerprint" FieldToMatchProperty = JA3FingerprintProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {jA3Fingerprint = Prelude.pure newValue, ..}
instance Property "JA4Fingerprint" FieldToMatchProperty where
  type PropertyType "JA4Fingerprint" FieldToMatchProperty = JA4FingerprintProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {jA4Fingerprint = Prelude.pure newValue, ..}
instance Property "JsonBody" FieldToMatchProperty where
  type PropertyType "JsonBody" FieldToMatchProperty = JsonBodyProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {jsonBody = Prelude.pure newValue, ..}
instance Property "Method" FieldToMatchProperty where
  type PropertyType "Method" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {method = Prelude.pure newValue, ..}
instance Property "QueryString" FieldToMatchProperty where
  type PropertyType "QueryString" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {queryString = Prelude.pure newValue, ..}
instance Property "SingleHeader" FieldToMatchProperty where
  type PropertyType "SingleHeader" FieldToMatchProperty = SingleHeaderProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {singleHeader = Prelude.pure newValue, ..}
instance Property "SingleQueryArgument" FieldToMatchProperty where
  type PropertyType "SingleQueryArgument" FieldToMatchProperty = SingleQueryArgumentProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty
        {singleQueryArgument = Prelude.pure newValue, ..}
instance Property "UriFragment" FieldToMatchProperty where
  type PropertyType "UriFragment" FieldToMatchProperty = UriFragmentProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {uriFragment = Prelude.pure newValue, ..}
instance Property "UriPath" FieldToMatchProperty where
  type PropertyType "UriPath" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {uriPath = Prelude.pure newValue, ..}