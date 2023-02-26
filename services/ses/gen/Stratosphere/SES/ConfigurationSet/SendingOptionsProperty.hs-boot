module Stratosphere.SES.ConfigurationSet.SendingOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SendingOptionsProperty :: Prelude.Type
instance ToResourceProperties SendingOptionsProperty
instance JSON.ToJSON SendingOptionsProperty