module Stratosphere.WAFv2.WebACL.CaptchaActionProperty (
        module Exports, CaptchaActionProperty(..), mkCaptchaActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CustomRequestHandlingProperty as Exports
import Stratosphere.ResourceProperties
data CaptchaActionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-captchaaction.html>
    CaptchaActionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-captchaaction.html#cfn-wafv2-webacl-captchaaction-customrequesthandling>
                           customRequestHandling :: (Prelude.Maybe CustomRequestHandlingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptchaActionProperty :: CaptchaActionProperty
mkCaptchaActionProperty
  = CaptchaActionProperty {customRequestHandling = Prelude.Nothing}
instance ToResourceProperties CaptchaActionProperty where
  toResourceProperties CaptchaActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.CaptchaAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomRequestHandling"
                              Prelude.<$> customRequestHandling])}
instance JSON.ToJSON CaptchaActionProperty where
  toJSON CaptchaActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomRequestHandling"
                 Prelude.<$> customRequestHandling]))
instance Property "CustomRequestHandling" CaptchaActionProperty where
  type PropertyType "CustomRequestHandling" CaptchaActionProperty = CustomRequestHandlingProperty
  set newValue CaptchaActionProperty {}
    = CaptchaActionProperty
        {customRequestHandling = Prelude.pure newValue, ..}