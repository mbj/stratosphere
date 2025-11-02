module Stratosphere.CloudFront.Distribution.ForwardedValuesProperty (
        module Exports, ForwardedValuesProperty(..),
        mkForwardedValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.CookiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ForwardedValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html>
    ForwardedValuesProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-cookies>
                             cookies :: (Prelude.Maybe CookiesProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-headers>
                             headers :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystring>
                             queryString :: (Value Prelude.Bool),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystringcachekeys>
                             queryStringCacheKeys :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForwardedValuesProperty ::
  Value Prelude.Bool -> ForwardedValuesProperty
mkForwardedValuesProperty queryString
  = ForwardedValuesProperty
      {haddock_workaround_ = (), queryString = queryString,
       cookies = Prelude.Nothing, headers = Prelude.Nothing,
       queryStringCacheKeys = Prelude.Nothing}
instance ToResourceProperties ForwardedValuesProperty where
  toResourceProperties ForwardedValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.ForwardedValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryString" JSON..= queryString]
                           (Prelude.catMaybes
                              [(JSON..=) "Cookies" Prelude.<$> cookies,
                               (JSON..=) "Headers" Prelude.<$> headers,
                               (JSON..=) "QueryStringCacheKeys"
                                 Prelude.<$> queryStringCacheKeys]))}
instance JSON.ToJSON ForwardedValuesProperty where
  toJSON ForwardedValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryString" JSON..= queryString]
              (Prelude.catMaybes
                 [(JSON..=) "Cookies" Prelude.<$> cookies,
                  (JSON..=) "Headers" Prelude.<$> headers,
                  (JSON..=) "QueryStringCacheKeys"
                    Prelude.<$> queryStringCacheKeys])))
instance Property "Cookies" ForwardedValuesProperty where
  type PropertyType "Cookies" ForwardedValuesProperty = CookiesProperty
  set newValue ForwardedValuesProperty {..}
    = ForwardedValuesProperty {cookies = Prelude.pure newValue, ..}
instance Property "Headers" ForwardedValuesProperty where
  type PropertyType "Headers" ForwardedValuesProperty = ValueList Prelude.Text
  set newValue ForwardedValuesProperty {..}
    = ForwardedValuesProperty {headers = Prelude.pure newValue, ..}
instance Property "QueryString" ForwardedValuesProperty where
  type PropertyType "QueryString" ForwardedValuesProperty = Value Prelude.Bool
  set newValue ForwardedValuesProperty {..}
    = ForwardedValuesProperty {queryString = newValue, ..}
instance Property "QueryStringCacheKeys" ForwardedValuesProperty where
  type PropertyType "QueryStringCacheKeys" ForwardedValuesProperty = ValueList Prelude.Text
  set newValue ForwardedValuesProperty {..}
    = ForwardedValuesProperty
        {queryStringCacheKeys = Prelude.pure newValue, ..}