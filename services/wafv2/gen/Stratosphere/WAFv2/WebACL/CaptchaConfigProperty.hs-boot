module Stratosphere.WAFv2.WebACL.CaptchaConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CaptchaConfigProperty :: Prelude.Type
instance ToResourceProperties CaptchaConfigProperty
instance JSON.ToJSON CaptchaConfigProperty