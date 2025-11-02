module Stratosphere.WAFv2.RuleGroup.CustomResponseProperty (
        module Exports, CustomResponseProperty(..),
        mkCustomResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.CustomHTTPHeaderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomResponseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-customresponse.html>
    CustomResponseProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-customresponse.html#cfn-wafv2-rulegroup-customresponse-customresponsebodykey>
                            customResponseBodyKey :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-customresponse.html#cfn-wafv2-rulegroup-customresponse-responsecode>
                            responseCode :: (Value Prelude.Integer),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-customresponse.html#cfn-wafv2-rulegroup-customresponse-responseheaders>
                            responseHeaders :: (Prelude.Maybe [CustomHTTPHeaderProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomResponseProperty ::
  Value Prelude.Integer -> CustomResponseProperty
mkCustomResponseProperty responseCode
  = CustomResponseProperty
      {haddock_workaround_ = (), responseCode = responseCode,
       customResponseBodyKey = Prelude.Nothing,
       responseHeaders = Prelude.Nothing}
instance ToResourceProperties CustomResponseProperty where
  toResourceProperties CustomResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.CustomResponse",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResponseCode" JSON..= responseCode]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomResponseBodyKey"
                                 Prelude.<$> customResponseBodyKey,
                               (JSON..=) "ResponseHeaders" Prelude.<$> responseHeaders]))}
instance JSON.ToJSON CustomResponseProperty where
  toJSON CustomResponseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResponseCode" JSON..= responseCode]
              (Prelude.catMaybes
                 [(JSON..=) "CustomResponseBodyKey"
                    Prelude.<$> customResponseBodyKey,
                  (JSON..=) "ResponseHeaders" Prelude.<$> responseHeaders])))
instance Property "CustomResponseBodyKey" CustomResponseProperty where
  type PropertyType "CustomResponseBodyKey" CustomResponseProperty = Value Prelude.Text
  set newValue CustomResponseProperty {..}
    = CustomResponseProperty
        {customResponseBodyKey = Prelude.pure newValue, ..}
instance Property "ResponseCode" CustomResponseProperty where
  type PropertyType "ResponseCode" CustomResponseProperty = Value Prelude.Integer
  set newValue CustomResponseProperty {..}
    = CustomResponseProperty {responseCode = newValue, ..}
instance Property "ResponseHeaders" CustomResponseProperty where
  type PropertyType "ResponseHeaders" CustomResponseProperty = [CustomHTTPHeaderProperty]
  set newValue CustomResponseProperty {..}
    = CustomResponseProperty
        {responseHeaders = Prelude.pure newValue, ..}