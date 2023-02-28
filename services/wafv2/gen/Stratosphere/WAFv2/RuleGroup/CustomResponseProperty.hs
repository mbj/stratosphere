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
  = CustomResponseProperty {customResponseBodyKey :: (Prelude.Maybe (Value Prelude.Text)),
                            responseCode :: (Value Prelude.Integer),
                            responseHeaders :: (Prelude.Maybe [CustomHTTPHeaderProperty])}
mkCustomResponseProperty ::
  Value Prelude.Integer -> CustomResponseProperty
mkCustomResponseProperty responseCode
  = CustomResponseProperty
      {responseCode = responseCode,
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