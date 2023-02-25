module Stratosphere.SES.ReceiptRule.SNSActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SNSActionProperty :: Prelude.Type
instance ToResourceProperties SNSActionProperty
instance JSON.ToJSON SNSActionProperty