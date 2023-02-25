module Stratosphere.WAFv2.WebACL.CaptchaActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CaptchaActionProperty :: Prelude.Type
instance ToResourceProperties CaptchaActionProperty
instance JSON.ToJSON CaptchaActionProperty