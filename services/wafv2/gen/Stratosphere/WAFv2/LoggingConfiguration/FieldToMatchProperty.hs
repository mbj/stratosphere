module Stratosphere.WAFv2.LoggingConfiguration.FieldToMatchProperty (
        module Exports, FieldToMatchProperty(..), mkFieldToMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.SingleHeaderProperty as Exports
import Stratosphere.ResourceProperties
data FieldToMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-fieldtomatch.html>
    FieldToMatchProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-fieldtomatch.html#cfn-wafv2-loggingconfiguration-fieldtomatch-method>
                          method :: (Prelude.Maybe JSON.Object),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-fieldtomatch.html#cfn-wafv2-loggingconfiguration-fieldtomatch-querystring>
                          queryString :: (Prelude.Maybe JSON.Object),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-fieldtomatch.html#cfn-wafv2-loggingconfiguration-fieldtomatch-singleheader>
                          singleHeader :: (Prelude.Maybe SingleHeaderProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-fieldtomatch.html#cfn-wafv2-loggingconfiguration-fieldtomatch-uripath>
                          uriPath :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldToMatchProperty :: FieldToMatchProperty
mkFieldToMatchProperty
  = FieldToMatchProperty
      {haddock_workaround_ = (), method = Prelude.Nothing,
       queryString = Prelude.Nothing, singleHeader = Prelude.Nothing,
       uriPath = Prelude.Nothing}
instance ToResourceProperties FieldToMatchProperty where
  toResourceProperties FieldToMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.FieldToMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Method" Prelude.<$> method,
                            (JSON..=) "QueryString" Prelude.<$> queryString,
                            (JSON..=) "SingleHeader" Prelude.<$> singleHeader,
                            (JSON..=) "UriPath" Prelude.<$> uriPath])}
instance JSON.ToJSON FieldToMatchProperty where
  toJSON FieldToMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Method" Prelude.<$> method,
               (JSON..=) "QueryString" Prelude.<$> queryString,
               (JSON..=) "SingleHeader" Prelude.<$> singleHeader,
               (JSON..=) "UriPath" Prelude.<$> uriPath]))
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
instance Property "UriPath" FieldToMatchProperty where
  type PropertyType "UriPath" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {uriPath = Prelude.pure newValue, ..}