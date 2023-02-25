module Stratosphere.SES.ReceiptRule.LambdaActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LambdaActionProperty :: Prelude.Type
instance ToResourceProperties LambdaActionProperty
instance JSON.ToJSON LambdaActionProperty