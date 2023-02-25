module Stratosphere.SES.ReceiptRule.BounceActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BounceActionProperty :: Prelude.Type
instance ToResourceProperties BounceActionProperty
instance JSON.ToJSON BounceActionProperty