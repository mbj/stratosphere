module Stratosphere.SES.ReceiptRule.StopActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StopActionProperty :: Prelude.Type
instance ToResourceProperties StopActionProperty
instance JSON.ToJSON StopActionProperty